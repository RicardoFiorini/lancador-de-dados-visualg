# 🎲 Simulador de Lançamento de Dados (Portugol)

Este é um algoritmo de console interativo, escrito em Portugol (otimizado para VisualG), que simula o lançamento de dois dados de seis faces (D6).

O programa exibe o resultado de cada dado e sua soma, armazena o resultado em um histórico e pergunta ao usuário se deseja rolar novamente. Ao final, ele exibe um histórico completo de todos os lançamentos.

## ✨ Funcionalidades Principais

* **Geração Aleatória Correta:** Utiliza a função `aleatorio ON` e a fórmula `(aleatorio % 6) + 1` para garantir lançamentos verdadeiramente aleatórios entre 1 e 6.
* **Modularidade:** O código é dividido em:
    * `funcao RolarUmDado()`: Uma função limpa que retorna o valor de um D6.
    * `procedimento ExibirHistorico()`: Um procedimento dedicado a formatar e exibir o histórico final.
* **Armazenamento Eficiente:** O histórico de lançamentos (Dado 1, Dado 2, Soma) é armazenado em uma **matriz** (vetor bidimensional) de inteiros. Esta abordagem é muito mais eficiente e corrige o erro fatal de "concatenação de tipos" que ocorreria ao tentar juntar strings e inteiros.
* **Loop Interativo:** O programa usa um loop `repita...até` para permitir que o usuário realize múltiplos lançamentos.
* **Proteção de Limite:** O programa verifica se o número de lançamentos excede o limite do vetor (100), encerrando automaticamente para evitar um erro de "índice fora dos limites".

## 🏛️ Estrutura e Lógica

1.  **`aleatorio ON`**: O programa "liga" o gerador de números aleatórios. Sem isso, o VisualG executaria a mesma sequência de números a cada vez.
2.  **`RolarUmDado()`**: Esta função usa `(aleatorio % 6)` para gerar um número de 0 a 5, e então soma 1, resultando no intervalo correto (1 a 6).
3.  **Loop Principal**:
    * Chama `RolarUmDado()` duas vezes.
    * Calcula a `soma`.
    * Exibe o resultado atual.
    * Armazena `dado1`, `dado2` e `soma` na linha `contador` da matriz `historico`.
    * Pergunta ao usuário se deseja continuar.
    * O loop é interrompido se o usuário digitar 'n' (ou 'N') ou se o limite do histórico for atingido.
4.  **`ExibirHistorico()`**: Após o loop, este procedimento é chamado para percorrer a matriz `historico` (do índice 1 até o último lançamento) e imprimir cada resultado de forma formatada.

## 🚀 Como Executar

Para executar este algoritmo, você precisará de um interpretador de Portugol.

1.  **VisualG (Recomendado):**
    * Baixe e instale o [VisualG](http://visualg.com.br/cli/).
    * Copie o código-fonte (`.alg`) do arquivo.
    * Abra o VisualG e cole o código.
    * Pressione **F9** (ou clique em "Rodar") para executar o programa.
