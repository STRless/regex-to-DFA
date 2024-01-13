#ifndef TOKEN_HPP
#define TOKEN_HPP

#include <set>

enum class TokenType {
    CHAR,
    ALTERNATION,
    KLEENE_STAR,
    KLEENE_PLUS,
    LPAREN,
    RPAREN,
    DOT,
    CHAR_GROUP
};

class Token {
public:
    enum TokenType type;
    std::variant<char, std::set<char>> lexeme; // set in case of char_group
};

#endif