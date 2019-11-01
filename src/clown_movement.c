#include "clown_movement.h"

void moveFigure(uint8_t tecla){
    tecla = tecla;
    if((*MS_COUNTER_REG_ADDR - tiempo_milisegundos) > 100){
        if(tecla == 1){
            uint8_t tempCol = figuraCol;
            figuraCol = figuraCol - 1;
            if(validateMovement(figuraRow, figuraCol)){
                paintFloor(figuraRow, tempCol);
                drawFigure(figuraRow, figuraCol);
                cherriesCounter(figuraRow, figuraCol-1);
            }else{
                figuraCol = figuraCol +1;
            }
        }else if(tecla == 2){
            uint8_t tempCol = figuraCol;
            figuraCol = figuraCol +1;
            if(validateMovement(figuraRow,figuraCol)){
                paintFloor(figuraRow, tempCol);
                drawFigure(figuraRow, figuraCol);
                cherriesCounter(figuraRow, figuraCol +1);
            }else{
                figuraCol = figuraCol - 1;
            }
        }else if(tecla == 3){
            uint8_t tempRow = figuraRow;
            figuraRow = figuraRow +1;
            if(validateMovement(figuraRow,figuraCol)){
                paintFloor(tempRow, figuraCol);
                drawFigure(figuraRow, figuraCol);
                cherriesCounter(figuraRow+1, figuraCol+1);
            }else{
                figuraRow = figuraRow - 1;
            }
        }else if (tecla == 4){
            uint8_t tempRow = figuraRow;
            figuraRow = figuraRow -1;
            if(validateMovement(figuraRow,figuraCol)){
                paintFloor(tempRow, figuraCol);
                drawFigure(figuraRow, figuraCol);
                cherriesCounter(figuraRow, figuraCol+1);
            }else{
                figuraRow = figuraRow +1;
            }
        }
        tiempo_milisegundos = *MS_COUNTER_REG_ADDR;
    }
    
}

bool validateMovement(uint8_t row, uint8_t col){
    if((row>5 && row<24) && (col >5 && col<70))
        return true;
    return false;
}
void cherriesCounter(uint8_t row, uint8_t col){
    if(row == 7 && (col == 6 || col ==7)){
        win[0] = 1;
        counterSimulator();
        winDetector();
    }else if(row == 8 && (col == 6 || col ==7)){
        win[1] = 1;
        counterSimulator();
         winDetector();
    }else if(row == 9 && (col == 6 || col ==7)){
        win[2] = 1;
        counterSimulator();
         winDetector();
    }else if(row == 10 && (col == 6 || col ==7)){
        win[3] = 1;
        counterSimulator();
         winDetector();
    }else if(row == 7 && (col == 6 || col ==7)){
        win[4] = 1;
        counterSimulator();
         winDetector();
    }else if(row == 8 && (col == 9 || col == 10)){
        win[5] = 1;
        counterSimulator();
        winDetector();
    }else if(row == 9 && (col == 9 || col == 10)){
        win[6] = 1;
        counterSimulator();
        winDetector();
    }else if(row == 10 && (col == 9 || col == 10)){
        win[7] = 1;
        counterSimulator();
        winDetector();
    }

    if(row == 14 && (col == 32 || col == 33)){
        win[8] = 1;
        counterSimulator();
        winDetector();
    }else if(row == 15 && (col == 32 || col == 33)){
        win[9] = 1;
        counterSimulator();
        winDetector();
    }else if(row == 16 && (col == 32 || col == 33)){
        win[10] = 1;
        counterSimulator();
        winDetector();
    }else if(row == 17 && (col == 32 || col == 33)){
        win[11] = 1;
        counterSimulator();
        winDetector();
    }else if(row == 14 && (col == 35 || col == 36)){
        win[12] = 1;
        counterSimulator();
        winDetector();
    }else if(row == 15 && (col == 35 || col == 36)){
        win[13] = 1;
        counterSimulator();
        winDetector();
    }else if(row == 16 && (col == 35 || col == 36)){
        win[14] = 1;
        counterSimulator();
        winDetector();
    }else if(row == 17 && (col == 35 || col == 36)){
        win[15] = 1;
        counterSimulator();
        winDetector();
    }

    if(row == 14 && (col == 6 || col == 7)){
        win[16] = 1;
        counterSimulator();
        winDetector();
    }else if(row == 14 && (col == 9 || col == 10)){
        win[17] = 1;
        counterSimulator();
        winDetector();
    }else if(row == 14 && (col == 12 || col == 13)){
        win[18] = 1;
        counterSimulator();
        winDetector();
    }else if(row == 14 && (col == 15 || col == 16)){
        win[19] = 1;
        counterSimulator();
        winDetector();
    }else if(row == 15 && (col == 6 || col == 7)){
        win[20] = 1;
        counterSimulator();
        winDetector();
    }else if(row == 15 && (col == 9 || col == 10)){
        win[21] = 1;
        counterSimulator();
        winDetector();
    }else if(row == 15 && (col == 12 || col == 13)){
        win[22] = 1;
        counterSimulator();
        winDetector();
    }else if(row == 15 && (col == 15 || col == 16)){
        win[23] = 1;
        counterSimulator();
        winDetector();
    }


    if(row == 20 && (col == 43 || col == 44)){
        win[24] = 1;
        counterSimulator();
        winDetector();
    }else if(row == 20 && (col == 46 || col == 47)){
        win[25] = 1;
        counterSimulator();
        winDetector();
    }else if(row == 20 && (col == 49 || col == 50)){
        win[26] = 1;
        counterSimulator();
        winDetector();
    }else if(row == 20 && (col == 52 || col == 53)){
        win[27] = 1;
        counterSimulator();
        winDetector();
    }else if(row == 21 &&(col == 43 || col == 44)){
        win[28] = 1;
        counterSimulator();
        winDetector();
    }else if(row == 21 && (col == 46 || col == 47)){
        win[29] = 1;
        counterSimulator();
        winDetector();
    }else if(row == 21 && (col == 49 || col == 50)){
        win[30] = 1;
        counterSimulator();
        winDetector();
    }else if(row == 21 && (col == 52 || col == 53)){
        win[31] = 1;
        counterSimulator();
        winDetector();
    }


    if(row == 9 && (col == 46 || col == 47)){
        win[32] = 1;
        counterSimulator();
        winDetector();
    }else if(row == 10 && (col == 46 || col == 47)){
        win[33] = 1;
        counterSimulator();
        winDetector();
    }else if(row == 11 && (col == 46 || col == 47)){
        win[34] = 1;
        counterSimulator();
        winDetector();
    }else if(row == 12 && (col == 46 || col == 47)){
        win[35] = 1;
        counterSimulator();
        winDetector();
    }else if(row == 9 && (col == 49 || col == 50)){
        win[36] = 1;
        counterSimulator();
        winDetector();
    }else if(row == 10 && (col == 49 || col == 50)){
        win[37] = 1;
        counterSimulator();
        winDetector();
    }else if(row == 11 && (col == 49 || col == 50)){
        win[38] = 1;
        counterSimulator();
        winDetector();
    }else if(row == 12 && (col == 49 || col == 50)){
        win[39] = 1;
        counterSimulator();
        winDetector();
    }

    if(row == 20 && (col == 22 || col == 23)){
        win[40] = 1;
        counterSimulator();
        winDetector();
    }else if(row == 20 && (col == 25 || col == 26)){
        win[41] = 1;
        counterSimulator();
        winDetector();
    }else if(row == 20 && (col == 28 || col == 29)){
        win[42] = 1;
        counterSimulator();
        winDetector();
    }else if(row == 20 && (col == 31 || col == 32)){
        win[43] = 1;
        counterSimulator();
        winDetector();
    }else if(row == 21 && (col == 22 || col == 23)){
        win[44] = 1;
        counterSimulator();
        winDetector();
    }else if(row == 21 && (col == 25 || col == 26)){
        win[45] = 1;
        counterSimulator();
        winDetector();
    }else if(row == 21 && (col == 28 || col == 29)){
        win[46] = 1;
        counterSimulator();
        winDetector();
    }else if(row == 21 && (col == 31 || col == 32)){
        win[47] = 1;
        counterSimulator();
        winDetector();
    }

    if(row == 14 && (col == 60 || col == 61)){
        win[48] = 1;
        counterSimulator();
        winDetector();
    }else if(row == 15 && (col == 60 || col == 61)){
        win[49] = 1;
        counterSimulator();
        winDetector();
    }else if(row == 16 && (col == 60 || col == 61)){
        win[50] = 1;
        counterSimulator();
        winDetector();
    }else if(row == 17 && (col == 60 || col == 61)){
        win[51] = 1;
        counterSimulator();
        winDetector();
    }else if(row == 14 && (col == 63 || col == 64)){
        win[52] = 1;
        counterSimulator();
        winDetector();
    }else if(row == 15 && (col == 63 || col == 64)){
        win[53] = 1;
        counterSimulator();
        winDetector();
    }else if(row == 16 && (col == 63 || col == 64)){
        win[54] = 1;
        counterSimulator();
        winDetector();
    }else if(row == 17 && (col == 63 || col == 64)){
        win[55] = 1;
        counterSimulator();
        winDetector();
    }

    if(row == 6 && (col == 22 || col == 23)){
        win[56] = 1;
        counterSimulator();
        winDetector();
    }else if(row == 6 && (col == 25 || col == 26)){
        win[57] = 1;
        counterSimulator();
        winDetector();
    }else if(row == 6 && (col == 28 || col == 29)){
        win[58] = 1;
        counterSimulator();
        winDetector();
    }else if(row == 6 && (col == 31 || col == 32)){
        win[59] = 1;
        counterSimulator();
        winDetector();
    }else if(row == 7 && (col == 22 || col == 23)){
        win[60] = 1;
        counterSimulator();
        winDetector();
    }else if(row == 7 && (col == 25 || col == 26)){
        win[61] = 1;
        counterSimulator();
        winDetector();
    }else if(row == 7 && (col == 28 || col == 29)){
        win[62] = 1;
        counterSimulator();
        winDetector();
    }else if(row == 7 && (col == 31 || col == 32)){
        win[63] = 1;
        counterSimulator();
        winDetector();
    }

}

void winDetector(){
    
    // for(uint8_t i = 0; i<64; i++){
    //     winner += win[i];
    // }
    
    // if(winner >= 64){
    //     set_cursor(27,25);
    //     set_color(WHITE, WHITE);
    //     puts("HA GANADO EL JUEGO");
    // }
}



void counterSimulator_c(){
    cont_unidades++;
    if (cont_unidades == 10){
        cont_unidades = 0;
        cont_decimas++;
    }
    if(cont_decimas ==10){
        cont_decimas = 0;
        cont_centecimas++;
    }
    if(cont_decimas >= 6 && cont_unidades >= 7){
        set_cursor(4,30);
        set_color(WHITE, BLACK);
        puts("HA GANADO EL JUEGO");
    }
}