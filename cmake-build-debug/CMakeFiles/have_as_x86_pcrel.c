int main() {
    __asm__ __volatile__ (".text; ha: nop; .data; .long ha-.; .text");
}
