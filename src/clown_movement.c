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
                cherriesCounter(figuraRow, figuraCol);
            }else{
                figuraCol = figuraCol +1;
            }
        }else if(tecla == 2){
            uint8_t tempCol = figuraCol;
            figuraCol = figuraCol +1;
            if(validateMovement(figuraRow,figuraCol)){
                paintFloor(figuraRow, tempCol);
                drawFigure(figuraRow, figuraCol);
                cherriesCounter(figuraRow, figuraCol);
            }else{
                figuraCol = figuraCol - 1;
            }
        }else if(tecla == 3){
            uint8_t tempRow = figuraRow;
            figuraRow = figuraRow +1;
            if(validateMovement(figuraRow,figuraCol)){
                paintFloor(tempRow, figuraCol);
                drawFigure(figuraRow, figuraCol);
                cherriesCounter(figuraRow, figuraCol);
            }else{
                figuraRow = figuraRow - 1;
            }
        }else if (tecla == 4){
            uint8_t tempRow = figuraRow;
            figuraRow = figuraRow -1;
            if(validateMovement(figuraRow,figuraCol)){
                paintFloor(tempRow, figuraCol);
                drawFigure(figuraRow, figuraCol);
                cherriesCounter(figuraRow, figuraCol);
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
    if((row >= 7 && row <=10) && (col == 6)){
        counterSimulator();
    }else if((row >= 7 && row <=10) && (col == 9)){
        counterSimulator();
    }else if((row >= 14 && row <=17) && (col == 3)){
        counterSimulator();
    }else if((row >= 14 && row <=17) && (col == 35)){
        counterSimulator();
    }else if((row = 14) && (col >=6 && col <= 15)){
        counterSimulator();
    }else if((row = 15) && (col >=6 && col <= 15)){
        counterSimulator();
    }else if((row = 20) && (col >=43 && col <= 52)){
        counterSimulator();
    }else if((row = 21) && (col >=43 && col <= 52)){
        counterSimulator();
    }else if((row >= 9 && row <=12) && (col == 46)){
        counterSimulator();
    }else if((row >= 9 && row <=12) && (col == 49)){
        counterSimulator();
    }else if((row = 20) && (col >=22 && col <= 31)){
        counterSimulator();
    }else if((row = 21) && (col >=22 && col <= 31)){
        counterSimulator();
    }else if((row >= 14 && row <=17) && (col == 60)){
        counterSimulator();
    }else if((row >= 14 && row <=17) && (col == 63)){
        counterSimulator();
    }else if((row = 6) && (col >=22 && col <= 31)){
        counterSimulator();
    }else if((row = 7) && (col >=22 && col <= 31)){
        counterSimulator();
    }
}

void counterSimulator(){
    cont_unidades+=5;
    if (cont_unidades == 10){
        cont_unidades = 0;
        cont_decimas+=5;
    }
    if(cont_decimas ==10){
        cont_decimas = 0;
        cont_centecimas+=5;
    }
}