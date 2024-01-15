#ifndef NODE_HPP
#define NODE_HPP

#include <vector>
#include "token.hpp"

enum class NodeType {
    EXPR,
    TERM,
    FACTOR,
    ATOM,
    CHAR,   // terminal
    META,   // terminal
};

class Node {
public:
    NodeType type;
    Token token;
    std::vector<std::unique_ptr<Node>> children;
};

#endif