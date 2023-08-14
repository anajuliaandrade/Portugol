programa
{
	inclua biblioteca Matematica --> mat
	funcao inicio()
	{
		inteiro opcao,i, num, a, b, respostaMaiorElemento, meses, numeroFatorial, respostaFatorial
		cadeia respostaTabuada, respostaMontante
		real peso, altura, respostaIMC, capital, respostaSomatorio, numeroSomatorio
		
		// entrada de dados 
		faca {
			escreva ("\nDigite o número correspondente à opção que você deseja executar:")
		escreva ("\n1-Tabuada de um número \n2-Maior elemento \n3-Calcular IMC \n4-Montante \n5-Fatorial \n6-Somatório \n7-Fechar programa\n")
		leia(opcao)
		limpa()
		//execucao da estrutura condicional
			escolha(opcao){
				caso 1 : 
					escreva ("\nDigite um nº entre 1 e 9 para calcularmos a tabuada: ")
					leia (num)
					se (num<1 ou num>9){
						escreva ("Número inválido, tente novamente!")
					}
					senao{
						respostaTabuada = tabuada(num)
						escreva ( respostaTabuada )
					}
					pare
				caso 2: 
					escreva ("Digite o primeiro elemento: ")
					leia (a)
					escreva ("Digite o segundo elemento: ")
					leia (b)
					respostaMaiorElemento = maior (a,b)
					escreva ("O maior número é = ", respostaMaiorElemento, "\n")
					pare
				caso 3:
					escreva ("Digite sua altura em metros: ")
					leia (altura)
					escreva ("Digite seu peso em KG: ")
					leia (peso)
					respostaIMC = indiceMassaCorporal(altura, peso)
					escreva ("Seu IMC é = ", respostaIMC, "\n")
					pare
				caso 4:
					escreva ("Digite o valor do capital inicial: ")
					leia (capital)
					escreva ("Digite a quantidade de meses: ")
					leia (meses)
					respostaMontante = calculoMontante(capital, meses)
					escreva(respostaMontante)
					pare
				caso 5:
					escreva("Digite um numero para calcularmos o fatorial: ")
					leia(numeroFatorial)
					respostaFatorial= fatorial(numeroFatorial)
					escreva("\nO fatorial do número ", numeroFatorial," é: ",respostaFatorial,"\n")
					pare
				caso 6:
					escreva ("Digite um número para executamos o somatório: ")
					leia(numeroSomatorio)
					respostaSomatorio = calcularSomatorio( numeroSomatorio)
					escreva ("O resultado do somatório é = ", respostaSomatorio)
					
			   }
		}
		enquanto (opcao != 7)
	}
	funcao cadeia tabuada ( inteiro num){
		inteiro i, resultado 
		para (i=0; i <=10; i++){
			escreva (num, "x", i, "=", num*i, "\n")
		}
		retorne " "
	}
	funcao inteiro maior (inteiro a, inteiro b){
		inteiro numeroMaior
		se (a > b){
			numeroMaior = a
		}
		senao {
			numeroMaior = b
		}
		retorne numeroMaior
	}
	funcao real indiceMassaCorporal ( real altura, real peso){
		real imc
		imc = peso / (altura * altura)
		retorne imc
	}
	funcao cadeia calculoMontante(real capital, inteiro meses){
		real mont
		inteiro i
		mont = 0.0
		para ( i = 0; i< meses; i++){
		mont = capital * (1+0.10)
		capital = mont
		escreva ("Montante final do ", i+1, "º mês = R$", mont, "\n")
		}
		retorne " "
	}
	funcao inteiro fatorial (inteiro numeroFatorial){
		inteiro x,i
		x=1
		para(i=1; i<=numeroFatorial; i++){
			x=x*i
		}
		retorne x
	}
	funcao real calcularSomatorio (real numeroSomatorio){
		inteiro i, x
		real s 
		s= 0.0
		x = fatorial(1)
		para(i= 1; i <= numeroSomatorio; i++){
			x = i
			s = s + (1 / x)
		}
		s = s + 1
		retorne s
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 3160; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */