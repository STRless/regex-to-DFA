#include "iterator.hpp"

char Iterator::get_char() {
    return buffer[cursor];
}

bool Iterator::has_next() {
    return cursor < buffer_len;
}

char Iterator::peek_next() {
    return buffer[cursor+1];
}

char Iterator::get_next() {
    return buffer[cursor++];
}