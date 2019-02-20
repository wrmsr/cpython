volatile int val = 1;
int main() {
  __atomic_load_n(&val, __ATOMIC_SEQ_CST);
  return 0;
}
