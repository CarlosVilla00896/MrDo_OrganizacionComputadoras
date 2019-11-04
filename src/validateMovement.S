.globl validateMovement
.text

validateMovement:
    li $t0, 5    
    sltu $t1, $t0, $a0      #row>5
    sltiu $t2, $a0, 24      #row<24
    sltu $t3, $t0, $a1      #col>5
    sltiu $t4, $a1, 70      #col<70

    and $t5, $t1, $t2       #row>5 && ro<24 (a)
    and $t6, $t3, $t4       #col>5 && coxspiml<70 (b)

    and $t7, $t5, $t6       #a && b

    beq $t7, $zero, return_false
    li $v0, 1
    j end_function

return_false:
    li $v0, 0
    j end_function
end_function:
    jr $ra 


