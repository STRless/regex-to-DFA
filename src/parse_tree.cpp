#include "parse_tree.hpp"

ParseTree::ParseTree(Scanner scanner) 
    : scanner(scanner)
{
    //this->scanner = scanner;
}

std::unique_ptr<Node> ParseTree::parse_expr() {
    auto term = parse_term();

    // <expr> ::= <term>
    std::unique_ptr<Node> new_node (new Node());
    new_node->type = NodeType::EXPR;
    new_node->token = Token({TokenType::NONE, '0'});
    new_node->children.push_back(term);

    if (scanner.has_next() && scanner.peek_next().type == TokenType::ALTERNATION) {
        // <expr> ::= <term> '|' <expr>
        scanner.consume_token();
        auto expr = parse_expr();
        new_node->children.push_back(expr);
    }

    return new_node;
}

std::unique_ptr<Node> ParseTree::parse_term() {
    auto fact = parse_fact();

    // <term> ::= <factor>
    std::unique_ptr<Node> new_node (new Node());
    new_node->type = NodeType::TERM;
    new_node->token = Token({TokenType::NONE, '0'});
    new_node->children.push_back(fact);

    if (scanner.has_next() && scanner.peek_next().type != TokenType::ALTERNATION) {
        // <term> ::= <factor><term>
        auto term = parse_term();
        new_node->children.push_back(term);
    }

    return new_node;
}

bool is_metachar(TokenType t) {
    return t == TokenType::KLEENE_PLUS || t == TokenType::KLEENE_STAR 
                    || t == TokenType::QUEST_MARK;
}

std::unique_ptr<Node> ParseTree::parse_fact() {
    auto atom = parse_atom();

    std::unique_ptr<Node> new_node (new Node());
    new_node->type = NodeType::FACTOR;
    new_node->token = Token({TokenType::NONE, '0'});
    new_node->children.push_back(atom);

    if (scanner.has_next() && is_metachar(scanner.get_token().type)) {
        std::unique_ptr<Node> terminal_meta (new Node());
        terminal_meta->type = NodeType::META;
        terminal_meta->token = scanner.get_token();
        scanner.consume_token();
        new_node->children.push_back(terminal_meta);
    }
    return new_node;
}

std::unique_ptr<Node> ParseTree::parse_atom() {
    std::unique_ptr<Node> new_node (new Node());
    new_node->type = NodeType::ATOM;
    new_node->token = Token({TokenType::NONE, '0'});

    if (scanner.get_token().type == TokenType::LPAREN) {
        scanner.consume_token();
        auto expr = parse_expr();
        scanner.consume_token();
        new_node->children.push_back(expr);
    } else {
        std::unique_ptr<Node> terminal_char (new Node());
        terminal_char->type = NodeType::CHAR;
        terminal_char->token = scanner.get_token();
        scanner.consume_token();
        new_node->children.push_back(terminal_char);
    }
    return new_node;
}