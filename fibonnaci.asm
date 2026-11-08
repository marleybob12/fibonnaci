.data
msg: .asciiz "Digite um numero de 3 a 34 : "
erro: .asciiz "Numero invalido!tente novamente \n"
pula : .asciiz "\n"

.text 
.globl main

main:
	#ler e validar o N
	
	ler_n :
		li $v0,4
		la $a0,msg
		syscall
		
		li $v0,5
		syscall
		move $t0,$v0
		
		#verificar se n > 2
		
		li $t1,2
		slt $t2,$t1,$t0
		beq $t2,$zero,invalido
		
		j iniciar
		
	invalido:
		li $v0,4
		la $a0,erro
		syscall
		
		j ler_n
		
		
#iniciar fibonnaci
	iniciar :
		li $t3,0 #penultimo
		li $t4,1 #Ultimo
		li $t5,2 #divisor
		
			
	loop :
		slt $t6,$t0,$t4
		bne $t6,$zero,fim
		
		#subtração
		sub $t7,$t4,$t3 
		#verificar se é par
		div $t7,$t5
		
		mfhi $t8
		bne $t8,$zero,nao_imprime
		li $v0,1
		move $a0,$t7
		syscall
		
		li $v0,4
		la $a0,pula
		syscall
		
	nao_imprime :
		add $t9,$t3,$t4
		move $t3,$t4
		move $t4,$t9
		
		j loop
		
		
	fim:
		li $v0,10
		syscall
		