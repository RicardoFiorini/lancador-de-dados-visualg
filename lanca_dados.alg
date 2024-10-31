algoritmo "Simulador de Lançamento de Dados"
variáveis
    dado1, dado2, soma : inteiro
    opcao : caractere
    historico : vetor[1..100] de caractere
    contador : inteiro
início
    contador ← 1

    escreva("=== Simulador de Lançamento de Dados ===\n")

    // Loop principal para permitir múltiplos lançamentos
    repita
        // Gera valores aleatórios para cada dado entre 1 e 6
        dado1 ← aleatorio(1, 6)
        dado2 ← aleatorio(1, 6)
        soma ← dado1 + dado2

        // Exibe os resultados do lançamento atual
        escreva("\nLançamento ", contador, ":")
        escreva("\nDado 1: ", dado1)
        escreva("\nDado 2: ", dado2)
        escreva("\nSoma dos dados: ", soma, "\n")

        // Armazena o lançamento no histórico
        historico[contador] ← "Lançamento " + contador + ": Dado 1 = " + dado1 + ", Dado 2 = " + dado2 + ", Soma = " + soma
        contador ← contador + 1

        // Pergunta ao usuário se deseja lançar novamente
        escreva("Deseja lançar os dados novamente? (s/n): ")
        leia(opcao)
    até opcao = "n"

    // Exibe o histórico de todos os lançamentos
    escreva("\n=== Histórico de Lançamentos ===\n")
    para i de 1 até contador - 1 faça
        escreva(historico[i], "\n")
    fimpara

    escreva("Obrigado por usar o simulador!")
fimalgoritmo
