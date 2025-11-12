algoritmo "Simulador de Lançamento de Dados Aprimorado"

// --- Variáveis Globais ---
var
   // Define um "limite" para o histórico
   limite_historico: inteiro
   // Matriz para o histórico: [linha, coluna]
   // Coluna 1: Dado 1, Coluna 2: Dado 2, Coluna 3: Soma
   historico: vetor[1..100, 1..3] de inteiro
   
// --- Função: Simula um único dado D6 ---
// (Retorna um valor de 1 a 6)
funcao RolarUmDado() : inteiro
inicio
   // (aleatorio % 6) gera um número de 0 a 5
   // + 1 ajusta o intervalo para 1 a 6
   retorne (aleatorio % 6) + 1
fimfuncao

// --- Procedimento: Exibe o histórico formatado ---
procedimento ExibirHistorico(totalLancamentos: inteiro)
var
   i: inteiro
inicio
   escreva("\n==================================\n")
   escreva("=    Histórico de Lançamentos    =\n")
   escreva("==================================\n")

   se (totalLancamentos = 0) entao
      escreva("Nenhum lançamento foi registrado.\n")
   senao
      // Loop para percorrer as linhas da matriz
      para i de 1 até totalLancamentos faca
         escreva("Lançamento ", i, ": ")
         escreva("Dado 1 [", historico[i, 1], "], ")
         escreva("Dado 2 [", historico[i, 2], "], ")
         escreva("Soma = ", historico[i, 3], "\n")
      fimpara
   fimse
fimprocedimento

// --- Bloco Principal (Início da Execução) ---
var
   dado1, dado2, soma, contador: inteiro
   opcao: caractere
inicio
   // ATIVA o gerador de números aleatórios. ESSENCIAL!
   // Sem isso, os números serão sempre os mesmos.
   aleatorio ON
   
   contador <- 1 // Indica o próximo slot a ser preenchido
   limite_historico <- 100 // Define o tamanho do nosso vetor

   escreva("=== Simulador de Lançamento de Dados ===\n")
   

   // Loop principal (Repita...Até)
   repita
      // 1. Rolar os dados usando a função
      dado1 <- RolarUmDado()
      dado2 <- RolarUmDado()
      soma <- dado1 + dado2

      // 2. Exibir o resultado atual
      escreva("\n--- Lançamento ", contador, " ---\n")
      escreva("   Dado 1: ", dado1, "\n")
      escreva("   Dado 2: ", dado2, "\n")
      escreva("   Soma: ", soma, "\n")

      // 3. Armazenar os 3 valores na matriz de histórico
      historico[contador, 1] <- dado1
      historico[contador, 2] <- dado2
      historico[contador, 3] <- soma

      contador <- contador + 1 // Incrementa o índice

      // 4. Perguntar ao usuário se deseja continuar
      escreva("\nDeseja lançar os dados novamente? (S/N): ")
      leia(opcao)
      
      // 5. Verificação de segurança (evita estourar o vetor)
      se (contador > limite_historico) entao
         escreva("\n[AVISO] Limite do histórico (", limite_historico, ") atingido! Encerrando...\n")
         opcao <- "N" // Força a saída do loop
      fimse

   // O loop continua até que o usuário digite 'n' ou 'N'
   até (opcao = "n") ou (opcao = "N")

   // 6. Exibe o histórico final
   // Passamos (contador - 1) pois 'contador' já aponta para
   // a próxima posição vazia.
   ExibirHistorico(contador - 1)

   escreva("\nObrigado por usar o simulador!")
fimalgoritmo
