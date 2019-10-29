#include "draw.h"

void paintGreen(uint8_t row_start, uint8_t row_end, uint8_t col_start, uint8_t col_end){
    set_color(LIGHT_GREEN, GREEN);
    
    for(uint8_t i = row_start; i <= row_end; i++){
        for(uint8_t j = col_start; j <= col_end; j++){
            set_cursor(i, j);
            puts("\x4\x4\x4");
        }
    }
}

void paintHallV(uint8_t row_start, uint8_t row_end, uint8_t col){
    set_color(BLACK, BLACK);
    
    for(uint8_t i = row_start; i < row_end; i++){
        set_cursor(i, col);
        puts("\x1\x1\x1");
        set_cursor(i+1, col);
        puts("\x1\x1\x1");
    }
}

void paintHallH(uint8_t row, uint8_t col_start, uint8_t col_end){
    set_color(BLACK, BLACK);
    
    for (uint8_t i = col_start; i < col_end; i+=3){
        set_cursor(row, i);
        puts("\x1\x1\x1");
        set_cursor(row +1, i);
        puts("\x1\x1\x1");
    }
}

void paintFloor(uint8_t row, uint8_t col){
    set_color(BLACK, BLACK);
    set_cursor(row, col);

    puts("\x1\x1\x1");
    set_cursor(row+1, col);
    puts("\x1\x1\x1");
}

void drawFigure(uint8_t row, uint8_t col){
    set_color(WHITE, BLACK);
    set_cursor(row, col);
    puts("\x5\x6\x7");
    set_cursor (row+1, col);
    puts("\x8\x9\xB");
}
void drawCherry(uint8_t row, uint8_t col){
    set_color(RED, LIGHT_GREEN);
    set_cursor(row, col);
    puts("\x1\x2");
}


void drawlaberinto(){
    paintGreen(5, 25, 5, 70);
    paintHallV(6,24, 38); //el de medio
    paintHallH(23, 6,60); //el largo de abajo
    paintHallV(21,22, 57); //el de abajo hacia arriba
    paintHallH(21, 60,69); //el horizontal 2
    paintHallV(6,22, 69);  //el vertical de la derecha
    paintHallH(6, 62,69); //hoirzontal hacia la izquierda
    paintHallV(8,10, 62); //bajada 
    paintHallH(9, 52,62); //horizontal contra el medio
    paintHallV(6,9, 52);    //
    paintHallH(6, 39,52);

    paintHallV(19,23, 6);
    paintHallH(19, 9,15);
    paintHallV(21,23, 12);

    drawCherry(7, 6);
    drawCherry(8, 6);
    drawCherry(9, 6);
    drawCherry(10, 6);
    drawCherry(7, 9);
    drawCherry(8, 9);
    drawCherry(9, 9);
    drawCherry(10, 9);

    drawCherry(14, 32);
    drawCherry(15, 32);
    drawCherry(16, 32);
    drawCherry(17, 32);
    drawCherry(14, 35);
    drawCherry(15, 35);
    drawCherry(16, 35);
    drawCherry(17, 35);
    
    drawCherry(14, 6);
    drawCherry(14, 9);
    drawCherry(14, 12);
    drawCherry(14, 15);
    drawCherry(15, 6);
    drawCherry(15, 9);
    drawCherry(15, 12);
    drawCherry(15, 15);

    drawCherry(20, 43);
    drawCherry(20, 46);
    drawCherry(20, 49);
    drawCherry(20, 52);
    drawCherry(21, 43);
    drawCherry(21, 46);
    drawCherry(21, 49);
    drawCherry(21, 52);

    drawCherry(9, 46);
    drawCherry(10, 46);
    drawCherry(11, 46);
    drawCherry(12, 46);
    drawCherry(9, 49);
    drawCherry(10, 49);
    drawCherry(11, 49);
    drawCherry(12, 49);


    drawCherry(20, 22);
    drawCherry(20, 25);
    drawCherry(20, 28);
    drawCherry(20, 31);
    drawCherry(21, 22);
    drawCherry(21, 25);
    drawCherry(21, 28);
    drawCherry(21, 31);

    drawCherry(14, 60);
    drawCherry(15, 60);
    drawCherry(16, 60);
    drawCherry(17, 60);
    drawCherry(14, 63);
    drawCherry(15, 63);
    drawCherry(16, 63);
    drawCherry(17, 63);

    drawCherry(6, 22);
    drawCherry(6, 25);
    drawCherry(6, 28);
    drawCherry(6, 31);
    drawCherry(7, 22);
    drawCherry(7, 25);
    drawCherry(7, 28);
    drawCherry(7, 31);

    set_cursor(1,35);
    set_color(WHITE, BLUE);
    puts("M R .  D O !");

    cont_unidades = 0;
    cont_decimas = 0;
    cont_centecimas = 0;
    winner = 0;

    for(uint8_t i = 0; i<64; i++){
        win[i] = 0;
    }

    figuraRow = 23;
    figuraCol = 38;
    drawFigure(figuraRow, figuraCol);
}