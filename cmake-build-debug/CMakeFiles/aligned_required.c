int main()
{
    char s[16];
    int i, *p1, *p2;
    for (i=0; i < 16; i++)
        s[i] = i;
    p1 = (int*)(s+1);
    p2 = (int*)(s+2);
    if (*p1 == *p2)
        return 1;
    return 0;
}
