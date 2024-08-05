# Mitchell Kolb
# 10/16/2020
# CPTS 260 -- Homework 4 -- Problem 2

#Problem 2: Cycle through the array to find and display the maximum number and the summation of all the elements in the array, then rpint both results

.data
SourceArray: .word 11, 12, -10, 13, 9, 12, 14, 15, -20, 0
MaxPrint: .asciiz "The maximum is --> "
Newline: .asciiz "\n"
SummationPrint: .asciiz "\nThe summation is --> "

.text
.globl main
main:
	#prints the max phrase and then will make the program jump to the max function which will calculate the max 
	li $v0, 4
	la $a0, MaxPrint
	syscall
	jal GetMaxFunction
	move $a0, $v0
	#after the max is dtermined, this will print the max number then jump to the summation function to calculate the summation
	li $v0, 1
	syscall
	li $v0, 4
	la $a0, Newline
	la $a0, SummationPrint
	syscall
	jal GetSummationFunction
	move $a0, $v0
	#this will print the summation number then end the program
	li $v0, 1
	syscall
	li $v0, 10
	syscall

	#this loops the temporary registies throughout the entire array to compare and see which is the highest amount according to its value.
	GetMaxFunction:
	li $t5, 1
	li $t3, -10000
	li $t1, 10
	la $t0, SourceArray
	#this is the loop that takes the numbers to compare then will jump back to the main part of the function
	loopformax:
	lw $s0, 0($t0)
	ble $s0, $t3, cont
	addi $t3, $s0, 0
	cont:
	addi $t0, $t0, 4
	sub $t1, $t1, $t5
	bne $t1, $t5, loopformax
	move $v0, $t3
	jr $ra

	#this loops the temorary registries throughout the entire arrya to add them up to find the total summation of the array
	GetSummationFunction:
	li $t5, 1
	li $t3, 0
	li $t1, 10
	la $t0, SourceArray
	#this is the loop which adds every number until the end of the array is reached then jumps back to the main function 
	loopforsummation:
	lw $s0, 0($t0)
	add $t3, $t3, $s0
	addi $t0, $t0, 4
	sub $t1, $t1, $t5
	bne $t1, $t5, loopforsummation
	move $v0, $t3
	jr $ra





