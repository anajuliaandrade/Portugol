programa
{
	
	inclua biblioteca Texto -->tx
	inclua biblioteca Tipos --> tp
	funcao inicio()
	{
		caracter texto
		cadeia cpf
		inteiro vet[11], soma, resto,soma2,i, resto2
		inteiro vetMult[] = {10,9,8,7,6,5,4,3,2}, vetMult2[] = {11,10,9,8,7,6,5,4,3}
		
		soma2 = 0 
		soma = 0
		resto = 0
		resto2=0
		
			escreva ("Digite o CPF: ")
			leia (cpf)
		para(i=0; i<11; i++){
			texto= tx.obter_caracter(cpf, i)
			vet[i]= tp.caracter_para_inteiro(texto)
		}
		// calculo do 1º digito
		para (i=0; i<9; i++){
			soma = (vet[i] * vetMult[i]) + soma
		}
		resto= soma%11
		
		// calculo do 2º digito
		para (i=0; i<9; i++){
			soma2 = (vet[i] * vetMult2[i]) + soma2
		}
		soma2=vet[9]*2+ soma2
		resto2= soma2%11
		//saída de dados
		se (vet[9] == 0 ou vet[9] == 11 - resto){
			se (vet[10] == 0 ou vet[10] == 11 - resto2){
				escreva ("\nCPF VÁLIDO!\n")
			}
		}
		senao {
			escreva ("\nCPF INVÁLIDO!\n")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 911; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */