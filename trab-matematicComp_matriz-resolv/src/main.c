#include <stdio.h>
#include <stdlib.h>
#include "matriz.h"

#define P_MANUAL 1
#define P_ALEATORIO 2
#define P_DEBUG 999

#define TROCA_LINHA_M_REDUCAO 1
#define TROCA_LINHA_M_INVERSA 2

int main(void){
  srand(time(NULL));
  int opcao = 0;
  int linha = 0;
  int coluna = 0;
  int key_M_inversa = 0;
  
  int *determinante;

  float **M;
  float **A;
  float **I;

  printf("Quantidade de Linhas: ");
  scanf("%d", &linha);
  printf("Quantidade de Colunas:");
  scanf("%d", &coluna);
  printf("Preechimento MANUAL(1) ou ALEATORIO(2)?\n");
  scanf("%d", &opcao);
   
  if(opcao == P_MANUAL){
    alocaEspaco_Matriz(M, linha, coluna);
    alocaEspaco_Matriz(A, linha, coluna);
    alocaEspaco_Matriz(I, linha, coluna);
    preencheMatrizManual(M, linha, coluna);
    copiaMatriz(M, A, linha, coluna);
    system("clear");
    printMatriz(M, linha, coluna);
    printMatriz(A, linha, coluna);
    printf("\n");
    trocaLinha(M, linha, coluna, TROCA_LINHA_M_REDUCAO);
    geraReducao_Equacao(M, linha, coluna);
    trocaLinhaIgualZero(M, linha, coluna);
    printMatriz(M, linha, coluna);
    if(linha == coluna){
      key_M_inversa = geraDeterminante_Equacao(M, linha, coluna, &determinante);
    }
    if(linha == coluna && key_M_inversa != 0){
      geraMatriz_Inversa(I, linha, coluna);
      trocaLinha(M, linha, coluna, TROCA_LINHA_M_INVERSA);
      trocaLinha(I, linha, coluna, TROCA_LINHA_M_INVERSA);
      geraInversa_Equacao(M, I, linha, coluna);
    }
  } else if(opcao == P_ALEATORIO){
    alocaEspaco_Matriz(M, linha, coluna);
    alocaEspaco_Matriz(A, linha, coluna);
    alocaEspaco_Matriz(I, linha, coluna);
    preencheMatrizAleatorio(M, linha, coluna);
    copiaMatriz(M, A, linha, coluna);
    system("clear");
    printMatriz(M, linha, coluna);
    printMatriz(A, linha, coluna);
  } else if(opcao == P_DEBUG){
      alocaEspaco_Matriz(M, linha, coluna);
      alocaEspaco_Matriz(A, linha, coluna);
      alocaEspaco_Matriz(I, linha, coluna);
      printf("Tamanho das matrizes:");
      printf("M:%ld\nI:%ld\nA:%ld\n\n",sizeof(M),sizeof(I),sizeof(A));
      printf("Preenchimento:\n");
      preencheMatrizAleatorio(M, linha, coluna);
      preencheMatrizAleatorio(A, linha, coluna);
      preencheMatrizAleatorio(I, linha, coluna);
      printf("\n\nMatriz M:");
      printMatriz(M, linha, coluna);
      printf("\n\nMatriz A:");
      printMatriz(A, linha, coluna);
      printf("\n\nMatriz I:");
      printMatriz(I, linha, coluna);
  } else {
    printf("Opcao errada\n");
  }

  liberaMem(M);
  liberaMem(A);
  liberaMem(I);
  return EXIT_SUCCESS;
}