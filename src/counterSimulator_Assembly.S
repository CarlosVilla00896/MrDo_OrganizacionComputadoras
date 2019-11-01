.globl counterSimulator
.extern counterSimulator_c

counterSimulator:
    addi $sp, $sp, -4
    sw $ra, 0($sp)
    jal counterSimulator_c

    lw $ra, 0($sp)
    addi $sp, $sp, 4
    j $ra