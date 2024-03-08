#define CUT
#define CUT_MAIN
#include "cut.h"

/* Regular ‹main()› function wrapper. */
#define main _test_main

/* Do «NOT» ever include ‹.c› files in production code!
 * It is a dirty hack to allow tests to call functions from a source code
 * that already contains ‹main()›, which could cause linking errors.
 * It should «never» be used otherwise. */

#include "drawer.c"
#undef main

// You should always comment what is being tested and also name the test
// accordingly.
// Should print just newline for zero-length line.
TEST(draw_line_empty)
{
    // You can call the function you want to test with the tested argument.
    draw_line(0);

    // You can check standard output of the program using ‹ASSERT_FILE› with
    // ‹stdout›.
    ASSERT_FILE(stdout, "\n");
}

// Check some constant length.
TEST(draw_line_five)
{
    draw_line(5);

    ASSERT_FILE(stdout, "#####\n");
}

// Comment what is being tested and change the name of the test.
TEST(rename_me)
{
    // Place your call in here.

    // Check the expected output using ‹ASSERT_FILE› here.
}
