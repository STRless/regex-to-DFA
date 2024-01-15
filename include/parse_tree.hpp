#ifndef PARSE_TREE_HPP
#define PARSE_TREE_HPP

#include "scanner.hpp"
#include "node.hpp"

class ParseTree {
public:
    ParseTree(Scanner);
private:
    Scanner scanner;
    std::unique_ptr<Node> parse_expr();
    std::unique_ptr<Node> parse_term();
    std::unique_ptr<Node> parse_fact();
    std::unique_ptr<Node> parse_atom();
};

#endif