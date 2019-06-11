//versao final
#include <time.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define TRUE 1
#define FALSE 0

unsigned linha = 0, coluna = 0;

int menu1(void);
int postoDaMatriz(float **M);
void preencheMatriz(float **matriz,  unsigned linha, unsigned coluna);
void gerarMatriz_Equacao(float **M, unsigned linha, unsigned coluna);
void preencheMatrizAleatorio(float **M);
void amostrarMatriz(float **M);
void trocaLinhaIgualZero(float **M);
void chamarOutrasFuncoes(float **M);
int determinanteMatriz(float M[linha][coluna]);
void copiaMatriz(float **M, float A[linha][coluna]);
void liberarOpcoes(float **M, int chave);
void inversaMatriz(float **M);

// funcoes feitas para retirar a repeticao de codigo
static void aux_gerarMatriz_E(float **M, float *aux, int i, int z);
static void aux_invesaCalc_M(float **M, float **I, float *aux, int z, int i);

//menu basico de preenchimento de linhas e colunas
int menu1(void)
{
  int op;
  printf("v3.0 final\n*********Matriz em forma de Escada*********\n\n");
  printf("Digite o numero de linhas:");
  scanf("%u", &linha);
  printf("Digite o numero de colunas:");
  scanf("%u", &coluna);
  printf("\nPreenchimento aleatorio? (1)sim\t(0)nao.\n:");
  scanf("%d", &op);

  return op;
}

int determinanteMatriz(float M[linha][coluna])
{
  int i, j, k;
  int count = 0, cl = linha;
  float temp = 0, fator = 0;

  // faz a transformação em um triangulo...
  for(i = 0; i < cl - 1; i++) {
    if(M[i][i] == 0) {
      for(k = i; k < cl; k++) {
        if(M[k][i] != 0) {
          for(j = 0; j < cl; j++) {
            temp = M[i][j];
            M[i][j] = M[k][j];
            M[k][j] = temp;
          }
          k = cl;
        }
      }
      count++;
    }

    if(M[i][i] != 0){
      for(k = i + 1; k < cl; k++){
        fator = -1.0 * M[k][i] / M[i][i];
        for(j = i; j < cl; j++)
          M[k][j] = M[k][j]+(fator*M[i][j]);
      }
    }
  }

  temp = 1.0;

  // Calcula o determinante
  for(i = 0; i < cl; i++)
    temp *= M[i][i];

  if(count % 2 == 0)
    printf("\nDeterminante:%.1f\n", temp);
  else
    printf("\nDeterminante:%.1f\n", -1.0 * temp);

  return temp;
}

void preencheMatriz(float **matriz, unsigned linha, unsigned coluna)
{
  int i, j;
  printf("\nDetermine o valor dos elementos da matriz : \n");
  for(i = 0; i < linha; i++)
    for(j = 0; j < coluna; j++){
      printf("M[%d][%d] => ",i+1,j+1);
      scanf("%f", &matriz[i][j]);
    }
}

void preencheMatrizAleatorio(float **M)
{
  for(int i = 0; i < linha; i++)
    for(int j = 0; j < coluna; j++)
      M[i][j] = rand()%6;
}

void amostrarMatriz(float **M)
{
  for(int i = 0; i < linha; i++){
    printf("[ ");
    for(int j = 0; j < coluna; j++)
      printf("%.0f ", M[i][j]);
    printf("]\n");
  }
}

int postoDaMatriz(float **M)
{
  int posto = linha, contador, z, j;
  float aux_trocar[coluna];

  for(z = 0; z < linha; z++){
    for(j = 0; j < coluna; j++)
      aux_trocar[j] = M[z][j];
    for(j = 0; j < coluna; j++)
      if(aux_trocar[j] == 0)
        contador++;
    if(contador == coluna)
      posto--;

    contador = 0;
  }

  return posto;
}

void trocaLinhaIgualZero(float **M)
{
  int contador = 0, z, j;
  float auxiliar;
  float aux_trocar[coluna];

  for(z = 0; z < linha; z++){
    if(z != linha-1){
      for(j = 0; j < coluna; j++)
        aux_trocar[j] = M[z][j];
      for(j = 0; j < coluna; j++)
        if(aux_trocar[j] == 0)
          contador++;
      if(contador == coluna){
        for(j = 0; j < coluna; j++){
          auxiliar = M[z][j];
          M[z][j] = M[z+1][j];
          M[z+1][j] = auxiliar;
        }
      }
    }
    contador = 0;
  }
}

void trocaLinha(float **M, unsigned linha, unsigned coluna)
{
  int trocalinha = 0, i, j, auxiliar, z;

  for(z = 0; z < linha; z++){
    for(j = 0; j < coluna; j++)
      for(i = z; i < linha; i++)
        if(M[i][j] != 0){
          trocalinha = i;
          i = linha;
          j = coluna;
        }
    if(trocalinha != z)
      for(j = 0; j < coluna; j++){
        auxiliar = M[z][j];
        M[z][j] = M[trocalinha][j];
        M[trocalinha][j] = auxiliar;
      }
    trocalinha = 0;
  }
}

static void aux_gerarMatriz_E(float **M, float *aux, int i, int z)
{
  for(int j = 0; j < coluna; j++) {
    if(aux[i] < 0)
      M[i][j] += (-1 * aux[i]) * M[z][j];
    else
      M[i][j] -= aux[i] * M[z][j];
  }
}
void gerarMatriz_Equacao(float **M, unsigned linha, unsigned coluna)
{
  float aux[linha], acharum;
  int controle = 0;
  int i, j, z, x;

  for(z = 0; z < linha; z++) {
    for(j = 0; j < coluna; j++) {
      if(M[z][j] != 0 && controle == 0) {
        acharum = M[z][j];
        x = j;
        controle++;
      }
      if(M[z][j] != 0 && controle > 0)
        M[z][j] = (1/acharum) * M[z][j];
    }

    for(i = 0; i < linha; i++)
      aux[i] = M[i][x];

    //em caso de erros jogar o codigo da função 'aux_gerarMatriz_E' no bloco desse 'FOR'
    if(z == 0) 
      for(i = 1; i < linha; i++) 
        aux_gerarMatriz_E(M, aux, i, z);
    else if(z > 0 && z < linha-1) {
      for(i = z-1; i >= 0; i--) {   aux_gerarMatriz_E(M, aux, i, z);}
      for(i = z+1; i < linha; i++) {aux_gerarMatriz_E(M, aux, i, z);}
    }
    else
      for(i = 0; i < linha-1; i++) {aux_gerarMatriz_E(M, aux, i, z);}

  acharum = 0;
  controle = 0;
  }
}

void chamarOutrasFuncoes(float **M)
{
  printf("\nMATRIZ ORIGINAL:\n");
  amostrarMatriz(M);

  trocaLinha(M, linha, coluna);
  gerarMatriz_Equacao(M, linha, coluna);

  trocaLinhaIgualZero(M);

  printf("\n\nRESULTANTE:\n");
  amostrarMatriz(M);
}

void liberarOpcoes(float **M, int chave)
{
  float A[linha][coluna];
  int lib = 0;

  if(chave == TRUE) preencheMatrizAleatorio(M); //para quando o preenchimento for aleatorio
  else preencheMatriz(M, linha, coluna);        //para quando o preenchimento for manual

  copiaMatriz(M, A);

  chamarOutrasFuncoes(M);

  //vai liberar a opção para achar a determinante da matriz
  //somente se a matriz for quadrada, ou seja, quantidade de
  //linhas e colunas iguais, nisso 'cl' obtem o valor de uma das
  //duas para realizar operações posteriormente
  if(linha == coluna) lib=determinanteMatriz(A);
  if(linha == coluna && lib != 0) inversaMatriz(A);

  free(A);
}

void copiaMatriz(float **M, float A[linha][coluna])
{
  for(int i = 0; i < linha; i++)
    for(int j = 0; j < coluna; j++)
      A[i][j] = M[i][j];
}

static void aux_invesaCalc_M(float **M, float **I, float *aux, int z, int i)
{
  for(int j = 0; j < coluna; j++){
    if(aux[i] < 0){
      M[i][j] += (-1* aux[i]) * M[z][j];
      I[i][j] += (-1* aux[i]) * I[z][j];

    }
    else {
      M[i][j] -= aux[i] * M[z][j];
      I[i][j] -= aux[i] * I[z][j];
    }
  }
}
void inversaMatriz(float **M)
{
  float I[linha][coluna];
  float aux[linha], acharum, auxiliar;
  int trocalinha = 0, controle = 0;
  int i, j, z, x;

  for(i = 0; i < linha; i++)
    for(j = 0; j < coluna; j++){
      if(i == j) I[i][j] = 1;
      else       I[i][j] = 0;
    }

  for(z = 0; z < linha; z++){

    for(j = 0; j < coluna; j++){
      for(i = z; i < linha; i++){
        if(M[i][j] != 0){
          trocalinha = i;
          i = linha;
          j = coluna;
        }
      }
    }

    if(trocalinha != 0){
      for(j = 0; j < coluna; j++){
        auxiliar = M[z][j];
        M[z][j] = M[trocalinha][j];
        M[trocalinha][j] = auxiliar;
      }
    }//operacoes na matriz principal.
    if(trocalinha != 0){
      for(j = 0; j < coluna; j++){
        auxiliar = I[z][j];
        I[z][j] = I[trocalinha][j];
        I[trocalinha][j] = auxiliar;
      }
    }//trocar a linha da matriz inversa.

    for(j = 0; j < coluna; j++){
      if(M[z][j] != 0 && controle == 0){
        acharum = M[z][j];
        x = j;
        controle++;
      }
      if(M[z][j] != 0 && controle > 0){
        M[z][j] = (1/acharum) * M[z][j];
      }
    }//achar o um.
    
    for(j = 0; j < coluna; j++){
      if(I[z][j] != 0 && controle > 0){
        I[z][j] = (1/acharum) * I[z][j];
      }
    }//multiplicar achar um pela matriz inversa


    for(i = 0; i < linha; i++){
      aux[i] = M[i][x];
    }//salvar a coluna onde esta o 1.

    if(z == 0)
      for(i = 1; i < linha; i++) {
        aux_invesaCalc_M(M, I, aux, i, z);
      }
    else if(z > 0 && z < linha-1){    
      for(i = z-1; i >= 0; i--) {
        aux_invesaCalc_M(M, I, aux, i, z);
      }
      for(i = z+1; i < linha; i++) {
        aux_invesaCalc_M(M, I, aux, i, z);
      }
    }
    else
      for(i = 0; i < linha-1; i++) {
        aux_invesaCalc_M(M, I, aux, i, z);
      }

    acharum = 0;
    controle = 0;
    free(I);
  }

  printf("\n\nINVERSA DA MATRIZ:\n");
  for(i = 0; i < linha; i++){
    printf("[ ");
    for(j = 0; j < coluna; j++){
      printf("%.2f ", I[i][j]);
    }
    printf("]\n");
  }

}

int main(void)
{
  srand(time(NULL));
  int nulidade, chave;
  float **M;

  //retorna a opcao de preenchimento da matriz
  chave = menu1();

  //cria matriz dinamicamente alocada
  M = (float **) malloc(linha * sizeof(float *));
  for(int i = 0; i < linha; i++)
    M[i] = (float *) malloc(coluna * sizeof(float));
  if(M == NULL) {
    printf("Erro ao tentar alocar memoria.\n");
    exit(TRUE);
  }

  liberarOpcoes(M, chave);

  nulidade = coluna - postoDaMatriz(M);
  printf("\nPosto : %d\n", postoDaMatriz(M));
  printf("Nulidade : %d\n", nulidade);

  return EXIT_SUCCESS;
}
