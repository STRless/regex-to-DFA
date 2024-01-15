#ifndef SCANNER_HPP
#define SCANNER_HPP

#include <string>
#include "iterator.hpp"
#include "token.hpp"

class Scanner {
public:
    Scanner(std::string);

    /*
     * all the logic to create a single token
    */
    Token tokenize();

    /*
     * return the current token dont move on yet
    */
    Token get_token();

    /*
     * move to the next token
    */
    void consume_token();

    /*
     * return true if there are tokens left in buffer
    */
    bool has_next();

    /*
     * peek and return the next token
     * does not move the cursor
    */
    Token peek_next();
private:
    Iterator itr;
    Token cur;
    Token next;
};

#endif