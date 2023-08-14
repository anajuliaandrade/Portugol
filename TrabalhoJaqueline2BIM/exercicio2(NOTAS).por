programa
{
	
	funcao inicio()
	{
		cadeia gabarito[10], nome[50], respostas[50][10]
		inteiro l, c, i, maiorNota, menorNota, quantidade, nota[50]
		real media, porcentagem, soma, quantidadePorc

		menorNota = 99
		maiorNota= 0
		quantidade = 0
		soma = 0.0
		quantidadePorc = 0.0
		
		//entrada de dados e calculos
		escreva("Digite o gabarito correspondete a cada questão, use letras MAIÚSCULAS de A até D.\n")
		para(i=0; i<10; i++){
			escreva ("Digite a resposta da ", i+1, "ª questão: ")
			leia(gabarito[i])
		}
		para (l=0; l<50; l++){
				escreva ("\nDigite o nome do ", l+1, "º aluno: ")
				leia (nome[l])
				para(c=0; c<10; c++){
				escreva("Digite a resposta da ", c+1,"ª questão deste aluno:  ")
				leia (respostas[l][c])
				se(gabarito[c] == respostas[l][c]){
					nota[l] = nota[l] +1
				}			
			}
			escreva ("\nNota do aluno = ", nota[l])		
		}
		para ( i=0; i<50; i++){
			se (nota[i] < menorNota){
				menorNota = nota[i]
			}
			se (nota[i] > maiorNota){
				maiorNota = nota[i]
			}
			soma = nota[i] + soma
			se (nota[i] >= 6.0){
				quantidadePorc = quantidadePorc + 1
			}
		}
		porcentagem = (quantidadePorc * 100) / 50
		media = soma / 50
		para ( i=0; i<50; i++){
			se (nota[i] > media) {
				quantidade = quantidade + 1
			}
		}
		//saída de dados 
		escreva("\n\nA menor nota foi: ",menorNota)
		escreva("\nA maior nota foi: ",maiorNota)
		escreva("\nA media da turma foi: ",media)
		escreva("\nA quatidade de alunos com nota acima da média: ", quantidade)
		escreva("\nA porcentagem de alunos aprovados é de: ",porcentagem, " % ")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1302; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {gabarito, 6, 9, 8}-{nome, 6, 23, 4}-{respostas, 6, 33, 9}-{nota, 7, 53, 4};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */