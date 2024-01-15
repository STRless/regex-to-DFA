#ifndef ITERATOR_HPP
#define ITERATOR_HPP

#include <string>

class Iterator {
public:
    Iterator(std::string input_stream) 
        : buffer(input_stream), cursor(0), buffer_len(input_stream.length())
    {
    }

    /*
     * return the character at cursor
    */
    char get_char();

    /*
     * move forward
    */
    void consume_char();

    /*
     * return true if there are chars left in buffer
    */
    bool has_next();

    /*
     * peek and return the next character
     * does not move the cursor
    */
    char peek_next();

    /*
     * return next character
     * moves the cursor
    */
    char get_next();
private:
    std::string buffer;
    size_t buffer_len;
    size_t cursor;
};

#endif