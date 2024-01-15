#ifndef TOKEN_HPP
#define TOKEN_HPP

#include <set>

enum class TokenType {
    CHAR,           // terminal
    ALTERNATION,    // non terminal
    KLEENE_STAR,    // non terminal
    KLEENE_PLUS,    // non terminal
    QUEST_MARK,     // non terminal
    LPAREN,         // terminal
    RPAREN,         // terminal
    DOT,            // terminal
    CHAR_GROUP,     // terminal
    NONE            // NO TOKEN
};

class Token {
public:
    TokenType type;
    std::variant<char, std::set<char>> lexeme; // set in case of char_group
};

#endif