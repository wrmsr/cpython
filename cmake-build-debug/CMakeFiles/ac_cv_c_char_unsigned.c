int main() { static int test_array [1 - 2 * !( ((char) -1) < 0 )];
test_array [0] = 0; return test_array [0]; return 0; }