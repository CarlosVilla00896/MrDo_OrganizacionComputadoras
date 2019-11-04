.globl counterSimulator

.extern cont_unidades
.extern cont_decimas
.extern cont_centecimas
.extern set_cursor
.extern set_color
.extern puts

.data
str: .asciiz "HA GANADO EL JUEGO"

.text

counterSimulator:
    la $t0, cont_unidades       #load cont_unidades memory address
    lb $t1, 0($t0)              #load byte from $t0, all cont variables are uint8
    la $t2, cont_decimas        #load cont_decimas memory address
    lb $t3, 0($t2)              #load byte from $t2
    la $t4, cont_centecimas     #load cont_centecimas memory address
    lb $t5, 0($t4)              #load byt from $t4
    addi $t1, $t1, 1            #cont_unidades++
    sb $t1, 0($t0)              #store the incremented value back to the memory
    li $t6, 10                  #constant 10
    
    bne $t1, $t6, if_decimas   #compare if cont_unidades != 10
    and $t1, $t1, $zero        #cont_unidades = 0
    sb $t1, 0($t0)             #store the new value back to the memory
    addi $t3, $t3, 1           #cont_decimas++
    sb $t3, 0($t2)             #store the incremented value back to the memory

if_decimas:
    bne $t3, $t6, win_if       #compare if cont_decimas != 10
    and $t3, $t3, $zero        #cont_decimas = 0
    sb $t3, 0($t2)             #store the new value back to the memory
    addi $t5, $t5, 1           #cont_centesimas++
    sb $t5, 0($t4)             #store the incremented value back to the memory

win_if:             
    li $t6, 6                   #constant 6
    li $t7, 7                   #constant 7
    bge $t3, $t6, next_condition    #cont_decimas >= 6, if true go to next condition
    j end_function

next_condition:
    bge $t1, $t7, game_win      # cont_unidades >= 7, if true go to game_win
    j end_function

game_win:
    addi $sp, $sp, -4           #reserve space to save $ra actual value
    sw $ra, 0($sp)              #saves $ra value

    li $a0, 4                   #pass 4 as parameter
    li $a1, 30                  #pass 30 as parameter
    jal set_cursor              #call set_cursor function

    li $a0, 0x7                 #pass 0x7(WHITE) as parameter
    li $a1, 0x0                 #pass 0x0(BLACK) as parameter
    jal set_color               #call set_color function

    la $t0, str                 #load local string address to $t0
    addi $a0, $t0, 0            #pass address of the first character as parameter
    jal puts                    #call puts function
    
    lw $ra, 0($sp)              #restore $ra value
    addi $sp, $sp, 4            

end_function:
    jr $ra
