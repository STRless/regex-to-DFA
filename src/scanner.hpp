#ifndef SCANNER_HPP
#define SCANNER_HPP

#include "iterator.hpp"
#include "token.hpp"

class Scanner {
private:
    Iterator itr;
    Token next;
public:
    Token get_token();
    bool has_next();
    Token peek_next();
    Token get_next();
};

#endif