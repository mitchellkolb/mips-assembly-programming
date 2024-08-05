.data

x: .word 5

y: .word 0

msg1: .asciiz "y= "

nl: .asciiz "\n"



.text

.globl main


main:

	#register assignment 
	lw $s0, x
	lw $s1, y

	#function arguments put them in a0

	add $a0, $s0, $zero

	jal equation #jumps to equation and saves the return in $ra


	add $s1, $v0, $zero

	#print mesg
	li $v0, 4
	la $a0, msg1
	syscall

	#print the integer

	li $v0, 1
	add $a0, $s1, $zero
	syscall

	#print the new line
	li $v0, 4
	la $a0, nl
	syscall

	#exit
	li $v0, 10
	syscall


equation:

	
	li $t0, 3

	mul $t0, $t0, $a0
	addi $t0, $t0, 5

	add $v0, $t0, $zero # move $v0, $t0

	jr $ra




