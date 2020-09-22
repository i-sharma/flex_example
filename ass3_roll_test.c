float Function2Calculate(int a, double b, float c)
{
    b = b ^ c;
    a += b;
    c /= a;
    return c;
}