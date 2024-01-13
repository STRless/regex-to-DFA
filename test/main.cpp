#include <iostream>
#include <gtest/gtest.h>



TEST(RANDOMTEST, RANDO) {
    int check = 0;
    EXPECT_EQ(0, check);
}

int main(int argc, char *argv[]) {
    std::cout << "YOLO";
    testing::InitGoogleTest(&argc, argv);
    return RUN_ALL_TESTS();
}