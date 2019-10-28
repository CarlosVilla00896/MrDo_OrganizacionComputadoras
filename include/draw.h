#include <system.h>
#include <screen.h>

uint8_t figuraRow;
uint8_t figuraCol;

uint8_t cont_unidades;
uint8_t cont_decimas;
uint8_t cont_centecimas;
unsigned int tiempo_milisegundos;
uint8_t tecla;

void paintGreen(uint8_t row_start, uint8_t row_end, uint8_t col_start, uint8_t col_end);
void paintHallV(uint8_t row_start, uint8_t row_end, uint8_t col);
void paintHallH(uint8_t row, uint8_t col_start, uint8_t col_end);
void drawCherry(uint8_t row, uint8_t col);
void drawFigure(uint8_t row, uint8_t cols);
void paintFloor(uint8_t row, uint8_t col);
void drawDinosaur();
void drawlaberinto();
