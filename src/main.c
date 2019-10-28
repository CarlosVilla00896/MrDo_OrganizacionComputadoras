#include <screen.h>
#include <keypad.h>
#include "draw.h"
#include "clown_movement.h"

#define TO_STR(ch) ( ( ((ch) >= 0 ) && ((ch) <= 9) )? (48 + (ch)) : ('a' + ((ch) - 10)) )

int main() {
    clear_screen();
    tiempo_milisegundos = *MS_COUNTER_REG_ADDR;
    drawlaberinto();
    // set_cursor(10, 45);
    // puts("Para reiniciar juego presione 'p'");
    
    keypad_init();
    while (1) {
        uint8_t k = keypad_getkey();
        set_cursor(1,1);
        puts("Cerezas:");
        set_cursor(1,12);
        put_char(TO_STR(cont_unidades & 0xf));
        set_cursor(1,11);
        put_char(TO_STR(cont_decimas & 0xf));
        if(cont_centecimas>0){
            set_cursor(1,10);
            put_char(TO_STR(cont_centecimas & 0xf));
        }

        if (k != 0) {
            moveFigure(k);
        }
    }

    return 0;
}
