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
    // if((row >= 7 && row <=10) && (col == 6)){
    //     counterSimulator();
    // }else if((row >= 7 && row <=10) && (col == 9)){
    //     counterSimulator();
    // }else if((row >= 14 && row <=17) && (col == 3)){
    //     counterSimulator();
    // }else if((row >= 14 && row <=17) && (col == 35)){
    //     counterSimulator();
    // }else if((row = 14) && (col >=6 && col <= 15)){
    //     counterSimulator();
    // }else if((row = 15) && (col >=6 && col <= 15)){
    //     counterSimulator();
    // }else if((row = 20) && (col >=43 && col <= 52)){
    //     counterSimulator();
    // }else if((row = 21) && (col >=43 && col <= 52)){
    //     counterSimulator();
    // }else if((row >= 9 && row <=12) && (col == 46)){
    //     counterSimulator();
    // }else if((row >= 9 && row <=12) && (col == 49)){
    //     counterSimulator();
    // }else if((row = 20) && (col >=22 && col <= 31)){
    //     counterSimulator();
    // }else if((row = 21) && (col >=22 && col <= 31)){
    //     counterSimulator();
    // }else if((row >= 14 && row <=17) && (col == 60)){
    //     counterSimulator();
    // }else if((row >= 14 && row <=17) && (col == 63)){
    //     counterSimulator();
    // }else if((row = 6) && (col >=22 && col <= 31)){
    //     counterSimulator();
    // }else if((row = 7) && (col >=22 && col <= 31)){
    //     counterSimulator();
    // }

    if(row == 7 && (col == 6 || col ==7)){
        counterSimulator();
    }else if(row == 8 && (col == 6 || col ==7)){
        counterSimulator();
    }else if(row == 9 && (col == 6 || col ==7)){
        counterSimulator();
    }else if(row == 10 && (col == 6 || col ==7)){
        counterSimulator();
    }else if(row == 7 && (col == 6 || col ==7)){
        counterSimulator();
    }else if(row == 8 && (col == 9 || col == 10)){
        counterSimulator();
    }else if(row == 9 && (col == 9 || col == 10)){
        counterSimulator();
    }else if(row == 10 && (col == 9 || col == 10)){
        counterSimulator();
    }

    if(row == 14 && (col == 32 || col == 33)){
        counterSimulator();
    }else if(row == 15 && (col == 32 || col == 33)){
        counterSimulator();
    }else if(row == 16 && (col == 32 || col == 33)){
        counterSimulator();
    }else if(row == 17 && (col == 32 || col == 33)){
        counterSimulator();
    }else if(row == 14 && (col == 35 || col == 36)){
        counterSimulator();
    }else if(row == 15 && (col == 35 || col == 36)){
        counterSimulator();
    }else if(row == 16 && (col == 35 || col == 36)){
        counterSimulator();
    }else if(row == 17 && (col == 35 || col == 36)){
        counterSimulator();
    }

    if(row == 14 && (col == 6 || col == 7)){
        counterSimulator();
    }else if(row == 14 && (col == 9 || col == 10)){
        counterSimulator();
    }else if(row == 14 && (col == 12 || col == 13)){
        counterSimulator();
    }else if(row == 14 && (col == 15 || col == 16)){
        counterSimulator();
    }else if(row == 15 && (col == 6 || col == 7)){
        counterSimulator();
    }else if(row == 15 && (col == 9 || col == 10)){
        counterSimulator();
    }else if(row == 15 && (col == 12 || col == 13)){
        counterSimulator();
    }else if(row == 15 && (col == 15 || col == 16)){
        counterSimulator();
    }

    if(row == 20 && (col == 43 || col == 44)){
        counterSimulator();
    }else if(row == 20 && (col == 46 || col == 47)){
        counterSimulator();
    }else if(row == 20 && (col == 49 || col == 50)){
        counterSimulator();
    }else if(row == 20 && (col == 52 || col == 53)){
        counterSimulator();
    }else if(row == 21 &&(col == 43 || col == 44)){
        counterSimulator();
    }else if(row == 21 && (col == 46 || col == 47)){
        counterSimulator();
    }else if(row == 21 && (col == 49 || col == 50)){
        counterSimulator();
    }else if(row == 21 && (col == 52 || col == 53)){
        counterSimulator();
    }

    if(row == 9 && (col == 46 || col == 47)){
        counterSimulator();
    }else if(row == 10 && (col == 46 || col == 47)){
        counterSimulator();
    }else if(row == 11 && (col == 46 || col == 47)){
        counterSimulator();
    }else if(row == 12 && (col == 46 || col == 47)){
        counterSimulator();
    }else if(row == 9 && (col == 49 || col == 50)){
        counterSimulator();
    }else if(row == 10 && (col == 49 || col == 50)){
        counterSimulator();
    }else if(row == 11 && (col == 49 || col == 50)){
        counterSimulator();
    }else if(row == 12 && (col == 49 || col == 50)){
        counterSimulator();
    }

    if(row == 20 && (col == 22 || col == 23)){
        counterSimulator();
    }else if(row == 20 && (col == 25 || col == 26)){
        counterSimulator();
    }else if(row == 20 && (col == 28 || col == 29)){
        counterSimulator();
    }else if(row == 20 && (col == 31 || col == 32)){
        counterSimulator();
    }else if(row == 21 && (col == 22 || col == 23)){
        counterSimulator();
    }else if(row == 21 && (col == 25 || col == 26)){
        counterSimulator();
    }else if(row == 21 && (col == 28 || col == 29)){
        counterSimulator();
    }else if(row == 21 && (col == 31 || col == 32)){
        counterSimulator();
    }

    if(row == 14 && (col == 60 || col == 61)){
        counterSimulator();
    }else if(row == 15 && (col == 60 || col == 61)){
        counterSimulator();
    }else if(row == 16 && (col == 60 || col == 61)){
        counterSimulator();
    }else if(row == 17 && (col == 60 || col == 61)){
        counterSimulator();
    }else if(row == 14 && (col == 63 || col == 64)){
        counterSimulator();
    }else if(row == 15 && (col == 63 || col == 64)){
        counterSimulator();
    }else if(row == 16 && (col == 63 || col == 64)){
        counterSimulator();
    }else if(row == 17 && (col == 63 || col == 64)){
        counterSimulator();
    }

    if(row == 6 && (col == 22 || col == 23)){
        counterSimulator();
    }else if(row == 6 && (col == 25 || col == 26)){
        counterSimulator();
    }else if(row == 6 && (col == 28 || col == 29)){
        counterSimulator();
    }else if(row == 6 && (col == 31 || col == 32)){
        counterSimulator();
    }else if(row == 7 && (col == 22 || col == 23)){
        counterSimulator();
    }else if(row == 7 && (col == 25 || col == 26)){
        counterSimulator();
    }else if(row == 7 && (col == 28 || col == 29)){
        counterSimulator();
    }else if(row == 7 && (col == 31 || col == 32)){
        counterSimulator();
    }

}

void counterSimulator(){
    cont_unidades++;
    if (cont_unidades == 10){
        cont_unidades = 0;
        cont_decimas++;
    }
    if(cont_decimas ==10){
        cont_decimas = 0;
        cont_centecimas++;
    }
}