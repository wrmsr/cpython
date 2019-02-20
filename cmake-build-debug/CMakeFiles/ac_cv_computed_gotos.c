int main(int argc, char **argv)
  {
      static void *targets[1] = { &&LABEL1 };
      goto LABEL2;
  LABEL1:
      return 0;
  LABEL2:
      goto *targets[0];
      return 1;
  }
