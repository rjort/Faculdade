#include <stdio.h>
#include <stdlib.h>

void geraMatriz_Equacao(float **M, int linha, int coluna){
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
        aux_Equacao(M,aux,coluna,i,z);
        // for(int j = 0; j < coluna; j++){
        //   if(aux[i] < 0){
        //     M[i][j] += (-1 * aux[i] * M[z][j]);
        //   }
        //   else {
        //     M[i][j] -= aux[i] * M[z][j];
        //   }
        // }
      }
    }
    else if(z > 0 && z < linha-1){
      for(i = z-1; i >= 0; i--) {
        aux_Equacao(M,aux,coluna,i,z);
        // for(int j = 0; j < coluna; j++){
        //   if(aux[i] < 0){
        //     M[i][j] += (-1 * aux[i] * M[z][j]);
        //   }
        //   else {
        //     M[i][j] -= aux[i] * M[z][j];
        //   }
        // }
      }
      for(i = z+1; i < linha; i++){
        aux_Equacao(M,aux,coluna,i,z);
        // for(int j = 0; j < coluna; j++){
        //   if(aux[i] < 0){
        //     M[i][j] += (-1 * aux[i] * M[z][j]);
        //   }
        //   else {
        //     M[i][j] -= aux[i] * M[z][j];
        //   }
        // }
      }
    } 
    else {
      for(i = 0; i < linha-1; i++){
        aux_Equacao(M,aux,coluna,i,z);
        // for(int j = 0; j < coluna; j++){
        //   if(aux[i] < 0){
        //     M[i][j] += (-1 * aux[i] * M[z][j]);
        //   }
        //   else {
        //     M[i][j] -= aux[i] * M[z][j];
        //   }
        // }
      }
    }
    achaUm = 0;
    controle = 0;
  }
}

void aux_Equacao(float **M, float *aux, int coluna, int i, int z){
  for(int j = 0; j < coluna; j++){
    if(aux[i] < 0){
      M[i][j] += (-1 * aux[i]) * M[z][j];
    }
    else {
      M[i][j] -= aux[i] * M[z][j];
    }
  }
}

void trocaLinha(float **M, int linha, int coluna){
  int trocaLinha = 0;
  int i, j, z;
  int aux;

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
    if(trocaLinha != z){
      for(j = 0; j < coluna; j++){
        aux = M[z][j];
        M[z][j] = M[trocaLinha][j];
        M[trocaLinha][j] = aux;
      }
    }
    trocaLinha = 0;
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

void printMatriz(float **M, int linha, int coluna){
  for(int i = 0; i < linha; i++){
    printf("[ ");
    for(int j = 0; j < coluna; j++)
      printf("%.0f ", M[i][j]);
    printf("]\n");
  } 
}

int iniciaOparacoes_MatrizResolv(float **M, float **A, int linha, int coluna){
  printf("\n");
  printMatriz(M, linha, coluna);
  trocaLinha(M, linha, coluna);
  geraMatriz_Equacao(M, linha, coluna);
  trocaLinhaIgualZero(M, linha, coluna);
  printf("\n");
  printMatriz(M, linha, coluna);
}