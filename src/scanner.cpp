#include <string>
#include <cctype>
#include <memory>
#include "scanner.hpp"
#include "iterator.hpp"
#include "token.hpp"

Scanner::Scanner(std::string buffer) 
    : itr(Iterator(buffer))
{
    cur = tokenize();
    next = tokenize();
}

Token Scanner::tokenize() {
    Token token = Token({TokenType::NONE, '0'});
    if (!itr.has_next()) {
        return token;
    }
    // initalize the cur token
    if (std::isalnum(itr.get_char())) {
        token.lexeme = itr.get_char();
        token.type = TokenType::CHAR;
    } else if (itr.get_char() == '|') {
        token.lexeme = itr.get_char();
        token.type = TokenType::ALTERNATION;
    } else if (itr.get_char() == '*') {
        token.lexeme = itr.get_char();
        token.type = TokenType::KLEENE_STAR;
    } else if (itr.get_char() == '+') {
        token.lexeme = itr.get_char();
        token.type = TokenType::KLEENE_PLUS;
    } else if (itr.get_char() == '?') {
        token.lexeme = itr.get_char();
        token.type = TokenType::QUEST_MARK;
    } else if (itr.get_char() == '(') {
        token.lexeme = itr.get_char();
        token.type = TokenType::LPAREN;
    } else if (itr.get_char() == ')') {
        token.lexeme = itr.get_char();
        token.type = TokenType::RPAREN;
    } else if (itr.get_char() == '.') {
        std::set<char> s;
        char start = '0';
        char end = '9';
        while (start <= end) {
            s.insert(start);
            ++start;
        }
        start = 'a';
        end = 'z';
        while (start <= end) {
            s.insert(start);
            ++start;
        }
        token.lexeme = itr.get_char();
        token.type = TokenType::DOT;
    } else if (itr.get_char() == '[') {
        // start of a character group
        itr.consume_char(); // throw away '['
        std::set<char> s;
        while (itr.has_next() && itr.get_char() != ']') {
            if (itr.peek_next() != '-') {
                s.insert(itr.get_char());
                itr.consume_char();
            } else {
                char start = itr.get_char();
                itr.consume_char();
                itr.consume_char(); // throw away '-'
                char end = itr.get_char();
                itr.consume_char();
                while (start <= end) {
                    s.insert(start);
                    ++start;
                }
            }
        }
        token.lexeme = s;
        token.type = TokenType::CHAR_GROUP;
    } else {
        // throw error: unknown
    }
    itr.consume_char();
    return token;
}

Token Scanner::get_token() {
    return cur;
}

void Scanner::consume_token() {
    cur = next;
    next = tokenize();
    return;
}

bool Scanner::has_next() {
    return next.type != TokenType::NONE;
}

Token Scanner::peek_next() {
    return next;
}
