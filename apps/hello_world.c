#include <stdio.h>
#include "pico/stdlib.h"
#include "tusb.h"

int main() {
    stdio_init_all();
    printf("Hello, world!\n");
    return 0;
}