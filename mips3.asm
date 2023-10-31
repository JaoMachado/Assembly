.data #secao de dados
	boasvindas: 	.asciiz "\n Programa para somar 2 numeros"
	num1:		.asciiz "\n Digite um numero inteiro:"
	num2:		.asciiz "\n Digite outro numero inteiro:"	
	resultado:	.asciiz "\n A soma dos dois numeros ?:"

.text #se??o de c?digo
	main: #r?tulo 

		li $v0, 4 #4 e o codigo para escrita de texto
		la $a0, boasvindas  #carrega o endere?o da mensagem no registrador
		syscall #chamada para o SO executar a escrita

		li $v0, 4 
		la $a0, num1 
		syscall 
	
		li $v0, 5 #5 e a operacaoo de leitura do numero inteiro, dado armazenado em $v0
		syscall
	
		add $t0, $v0, $zero #soma o 1 valor digitado pelo usuario (armazenado em $v0) com $zero (pra ter 3 operandos) e guarda em $t0
	
		li $v0, 4
		la $a0, num2   
		syscall
	
		li $v0, 5 
		syscall 
	
		add $t0, $t0, $v0 #soma o valor digitado pelo usuario (armazenado em $v0) com $t0 (que ja tinha o valor anterior) e guarda em $t0
	
		li $v0, 4  
		la $a0, resultado 
		syscall
	
		li $v0, 1 #1 e o codigo que representa escrita de inteiro
		add $a0, $t0, $zero #soma o valor de $t0 com $a0 e zero.
		syscall
	
		li $v0, 10 # cadigo 10 em $v0 representa exit (saida do programa) 

		syscall #SO executa exit do programa