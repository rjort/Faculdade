#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>

#define TRUE 1
#define FALSE 0
#define TROCA_LINHA_M_REDUCAO 1
#define TROCA_LINHA_M_INVERSA 2

void liberaMem(float **M){
  free(M);
}

void printMatriz(float **M, int linha, int coluna){
  for(int i = 0; i < linha; i++){
    printf("[ ");
    for(int j = 0; j < coluna; j++)
      printf("%.0f ", M[i][j]);
    printf("]\n");
  } 
}

void copiaMatriz(float **M, float **A, int linha, int coluna){
  for(int i = 0; i < linha; i++)
    for(int j = 0; j < coluna; j++)
      A[i][j] = M[i][j];
}

void preencheMatrizAleatorio(float **M, int linha, int coluna){
  for(int i = 0; i < linha; i++)
    for(int j = 0; j < coluna; j++)
      M[i][j] = rand()%6;
}

void preencheMatrizManual(float **M, int linha, int coluna){
  printf("\nValores: \n");
  for(int i = 0; i < linha; i++)
    for(int j = 0; j < coluna; j++){
      printf("M[%d][%d] => ", i+1,j+1);
      scanf("%f", &M[i][j]);
    }
}

void alocaEspaco_Matriz(float **M, int linha, int coluna){
  M = (float **) malloc(linha * sizeof(float *));
  for(int i = 0; i < linha; i++)
    M[i] = (float *) malloc(coluna * sizeof(float));
  if(M == NULL){
    printf("Erro ao tentar aloca memoria.\n");
    exit(TRUE);
  }
}

void trocaLinha(float **M, int linha, int coluna, int key){
  int trocaLinha = 0;
  int i, j, z;
  int auxNum;

  for(z = 0; z < linha; z++){
    for(j = 0; j < coluna; j++){
      for(i = z; i < linha; i++){
        if(M[i][j] != 0){
          trocaLinha = i;
          i = linha;
          j = coluna;
        }
      }
    }
    if(key == TROCA_LINHA_M_REDUCAO){
      if(trocaLinha != z){
        for(j = 0; j < coluna; j++){
          auxNum = M[z][j];
          M[z][j] = M[trocaLinha][j];
          M[trocaLinha][j] = auxNum;
        }
      }
      trocaLinha = 0;
    }
    if(key == TROCA_LINHA_M_INVERSA){
      if(trocaLinha != 0){
        for(j = 0; j < coluna; j++){
          auxNum = M[z][j];
          M[z][j] = M[trocaLinha][j];
          M[trocaLinha][j] = auxNum;
        }
      }
    }
  }
}

void trocaLinhaIgualZero(float **M, int linha, int coluna){
  int contador = 0;
  int z, j;
  float auxNum;
  float auxArray[coluna];

  for(z = 0; z < linha; z++){
    if(z != linha-1){
      for(j = 0; j < coluna; j++){
        auxArray[j] = M[z][j];
      }
      for(j = 0; j < coluna; j++){
        if(auxArray[j] == 0){
          contador++;
        }
      }
      if(contador == coluna){
        for(j = 0; j < coluna; j++){
          auxNum = M[z][j];
          M[z][j] = M[z+1][j];
          M[z+1][j] = auxNum;
        }
      }
    }
    contador = 0;
  }
}

void geraInversa_Equacao(float **M, float **I, int linha, int coluna){
  float auxLinha[linha];
  float achaUm;
  int controle = 0;

  for(int z = 0; z < linha; z++){

  }
}

void auxInversa_Equacao(float **M, float **I, float *auxLinha, int linha, int coluna, int z, int i){
  for(int j = 0; j < coluna; j++){
    if(auxLinha[i] < 0){
      M[i][j] += (-1 * auxLinha[i]) * M[z][j];
      I[i][j] += (-1 * auxLinha[i]) * I[z][j];
    } else {
      M[i][j] -= auxLinha[i] * M[z][j];
      I[i][j] -= auxLinha[i] * I[z][j];
    }
  }
}

void geraMatriz_Inversa(float **I, int linha, int coluna){
  for(int i = 0; i < linha; i++){
    for(int j = 0; j < coluna; j++){
      if(i == j) I[i][j] = 1;
      else       I[i][j] = 0;
    }
  }
}

int geraDeterminante_Equacao(float **M, int linha, int coluna, float *determinante){
  int contador = 0;
  float det = 0;
  float fator = 0;
  int i, j, k;

  for(i = 0; i < linha-1; i++){
    if(M[i][i] == 0){
      for(k = i; k < linha; k++){
        if(M[k][i] != 0){
          for(j = 0; j < linha; j++){
            det = M[i][j];
            M[i][j] = M[k][j];
            M[k][j] = det;
          }
          k = linha;
        }
      }
      contador++;
    }
    if(M[i][i] != 0){
      for(k = i+1; k < linha; k++){
        fator = -1.0 * M[k][i] / M[i][i];
        for(j = i; j < linha; j++){
          M[k][j] = M[k][j]+(fator*M[i][j]);
        }
      }
    }
  }
  det = 1.0;
  for(i = 0; i < linha; i++){
    det *= M[i][i];
  }
  if(contador % 2 == 0){
    *determinante = det;
  } else {
    *determinante = -1.0 * det;
  }

  return det;
}

void geraReducao_Equacao(float **M, int linha, int coluna){
  float aux[linha];
  float achaUm;
  int controle = 0;
  int i, j, z, x;

  for(z = 0; z < linha; z++){
    for(j = 0; j < coluna; j++){
      if(M[z][j] != 0 && controle == 0){
        achaUm = M[z][j];
        x = j;
        controle++;
      }
      if(M[z][j] != 0 && controle > 0){
        M[z][j] = (1/achaUm) * M[z][j];
      }
    }
    for(i = 0; i < linha; i++){
      aux[i] = M[i][x];
    }
    if(z == 0){
      for(i = 1; i < linha; i++){
        auxReducao_Equacao(M,aux,coluna,i,z);
      }
    }
    else if(z > 0 && z < linha-1){
      for(i = z-1; i >= 0; i--) {
        auxReducao_Equacao(M,aux,coluna,i,z);
      }
      for(i = z+1; i < linha; i++){
        auxReducao_Equacao(M,aux,coluna,i,z);
      }
    } 
    else {
      for(i = 0; i < linha-1; i++){
        auxReducao_Equacao(M,aux,coluna,i,z);
      }
    }
    achaUm = 0;
    controle = 0;
  }
}

void auxReducao_Equacao(float **M, float *aux, int coluna, int i, int z){
  for(int j = 0; j < coluna; j++){
    if(aux[i] < 0){
      M[i][j] += (-1 * aux[i]) * M[z][j];
    }
    else {
      M[i][j] -= aux[i] * M[z][j];
    }
  }
}

void zeraMatriz(float **M, int linha, int coluna){
  for(int i = 0; i < linha; i++){
    for(int j = 0; j < coluna; j++){
      M[i][j] = 0;
    }
  } 
}