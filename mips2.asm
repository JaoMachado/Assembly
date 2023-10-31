.data 
	array1: .space 40
.text	
	main:
		li $t0, 0 #contador
		li $t1, 0 #acumulador
		la $t2,array1 #criando o array1 e armazenando seu endereço em t2
	loop:
		bgt $t0,9,exit #se t0 for maior que 9, pula pro exit
		addi $t1,$t1,2 #somando 2 no acumulador, por isso o add(i)
		addi $t0,$t0,1 #somando 1 no contador, por isso o add(i)
		sw $t1,($t2) #armazenando o t1 na posição do array no t2
		addi $t2,$t2,4 #somando 4 no t2, para pular para próxima posição, ja que a palavra tem 4bytes
		j loop # mandando voltar ao começo do loop
	exit:
		li $v0,10 #10 é o sistema para finalizar
		syscall # carrega o sistema
		