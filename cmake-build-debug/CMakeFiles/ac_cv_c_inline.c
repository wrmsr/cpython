#ifndef __cplusplus
  typedef int foo_t;
  static inline foo_t static_foo () {return 0; }
  inline foo_t foo () {return 0; }
  int main() { return 0; }
  #endif
  