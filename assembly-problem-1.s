# Mitchell Kolb
# 10/16/2020
# CPTS 260 -- Homework 4 -- Problem 1

#Problem 1: create a simple calc that adds, subtracts, multiplys two number given by the user

.data
FirstNumPrint: .asciiz "Please enter the first number: "
SecondNumPrint: .asciiz "Please enter the second number: "
OperationChoicePrint: .asciiz "Please enter the operation type \n\tAddition: 0 \n\tSubtraction: 1 \n\tMultiplication: 3\n "
AnswerPrint: .asciiz "\nThe answer is "

.text
.globl main
main:
	#prints and takes in the input for the first number
	li $v0, 4
	la $a0, FirstNumPrint
	syscall
	li $v0, 5
	syscall
	move $t0, $v0

	#prints and takes in the input for the second number
	li $v0, 4
	la $a0, SecondNumPrint
	syscall
	li $v0, 5
	syscall
	move $t1, $v0

	#prints and takes in the input for the operation
	li $v0, 4
	la $a0, OperationChoicePrint
	syscall
	li $v0, 5
	syscall
	move $t2, $v0

	#prints result before calculation
	li $v0, 4
	la $a0, AnswerPrint
	syscall

	#decides which operation was chosen
	beq $t2, $zero, Add_num
	beq $t2, 1, Sub_num
	mul $t2, $t0, $t1
	j Answer

Add_num:
	#adds the two numbers and puts them into register t2 then jumps to Answer
	add $t2, $t0, $t1
	j Answer

Sub_num:
	#subtracts the two numbers and puts them into register t2
	sub $t2, $t0, $t1

Answer:
	#prints the number out
	move $a0, $t2
	li $v0, 1
	syscall
	#ends the program
	li $v0, 10
	syscall



