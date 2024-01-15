#include <iostream>
#include <string>

#include "iterator.hpp"
#include "scanner.hpp"


int main() {
    std::cout << "ONLY THE FOLLOWING SYNTAX IS ALLOWED:\n"
                 "1. concatenation (abc)\n"
                 "2. alternation (a|b|c)\n"
                 "3. grouping (a(b|c)d)\n"
                 "4. . (represents any character in the alphabet except line break)\n"
                 "5. + (one or more)\n"
                 "6. * (zero or more)\n"
                 "7. ? (once or none)\n"
                 "8. [] (character groups like [a-z] or [0-9])\n";
    std::cout << "\nENTER REGEX (WITHOUT ANY SPACES): ";

    std::string buffer;
    std::cin >> buffer;
    
    Scanner scanner = Scanner(buffer);

    // testing scanner
    while (scanner.get_token().type != TokenType::NONE) {
        Token token = scanner.get_token();
        if (token.type == TokenType::CHAR) {
            std::cout << "CHAR " << std::get<char>(token.lexeme) << '\n';
        }
        else if (token.type == TokenType::ALTERNATION) {
            std::cout << "ALTERN " << std::get<char>(token.lexeme) << '\n';
        }
        if (token.type == TokenType::KLEENE_STAR) {
            std::cout << "STAR " << std::get<char>(token.lexeme) << '\n';
        }
        if (token.type == TokenType::KLEENE_PLUS) {
            std::cout << "PLUS " << std::get<char>(token.lexeme) << '\n';
        }
        if (token.type == TokenType::LPAREN) {
            std::cout << "LPAREN " << std::get<char>(token.lexeme) << '\n';
        }
        if (token.type == TokenType::RPAREN) {
            std::cout << "RPAREN " << std::get<char>(token.lexeme) << '\n';
        }
        if (token.type == TokenType::DOT) {
            std::cout << "DOT " << std::get<char>(token.lexeme) << '\n';
        }
        if (token.type == TokenType::CHAR_GROUP) {
            std::cout << "GROUP ";
            auto it = std::get<std::set<char>>(token.lexeme).begin();
            while (it != std::get<std::set<char>>(token.lexeme).end()) {
                std::cout << *it;
                ++it;
            }

        }
        if (token.type == TokenType::NONE) {
            std::cout << "NONE " << std::get<char>(token.lexeme) << '\n';
        }
        scanner.consume_token();
    }

    return EXIT_SUCCESS;
}