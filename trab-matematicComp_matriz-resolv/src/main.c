#include <stdio.h>
#include <stdlib.h>
#include <time.h>

#include "matriz.h"

#define TRUE 1
#define FALSE 0

int linha;
int coluna;

static void copiaMatriz(float **M, float **A);
void preencheMatrizAleatorio(float **M);
void preencheMatrizManual(float **M);

void copiaMatriz(float **M, float **A){
  for(int i = 0; i < linha; i++)
    for(int j = 0; j < coluna; j++)
      A[i][j] = M[i][j];
}

void preencheMatrizAleatorio(float **M){
  for(int i = 0; i < linha; i++)
    for(int j = 0; j < coluna; j++)
      M[i][j] = rand()%6;
}

void preencheMatrizManual(float **M){
  printf("\nValores: \n");
  for(int i = 0; i < linha; i++)
    for(int j = 0; j < coluna; j++){
      printf("M[%d][%d] => ", i+1,j+1);
      scanf("%f", &M[i][j]);
    }
}

int main(void){
  srand(time(NULL));

  int opcao = 0;

  float **M;
  float **A;

  printf("Quantidade de Linhas: ");
  scanf("%d", &linha);
  printf("Quantidade de Colunas:");
  scanf("%d", &coluna);

  printf("Preechimento MANUAL(1) ou ALEATORIO(2)?\n");
  scanf("%d", &opcao);

  M = (float **) malloc(linha * sizeof(float *));
  for(int i = 0; i < linha; i++)
    M[i] = (float *) malloc(coluna * sizeof(float));
  if(M == NULL){
    printf("Erro ao tentar aloca memoria.\n");
    exit(TRUE);
  }

  if(opcao == 1){
    preencheMatrizManual(M);
    // copiaMatriz(M,A);
    iniciaOparacoes_MatrizResolv(M, A, linha, coluna);
  } else if (opcao == 2){
    preencheMatrizAleatorio(M);
    // copiaMatriz(M,A);
    iniciaOparacoes_MatrizResolv(M, A, linha, coluna);
  } else {
    printf("Opcao errada. Saindo\n");
    exit(TRUE);
  }

  free(M);
  return EXIT_SUCCESS;
}