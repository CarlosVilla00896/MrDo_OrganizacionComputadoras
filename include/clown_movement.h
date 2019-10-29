#define TO_STR(ch) ( ( ((ch) >= 0 ) && ((ch) <= 9) )? (48 + (ch)) : ('a' + ((ch) - 10)) )

#include "draw.h"

void moveFigure(uint8_t tecla);
void counterSimulator();
bool validateMovement(uint8_t row, uint8_t col);
void cherriesCounter(uint8_t row, uint8_t col);
void winDetector();