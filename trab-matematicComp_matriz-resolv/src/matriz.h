#ifndef _H_MATRIZ
#define _H_MATRIZ

// funciona como a main, é a estrutura principal onde o programa roda os procedimento de calculo
int iniciaOperacoes_MatrizResolv(float **M, float **A, int linha, int coluna);

void trocaLinha(float **M, int linha, int coluna);
void trocaLinhaIgualZero(float **M, int linha, int coluna);

// int postoDaMatriz(float **M);
// int determinaMatriz(float M[linha][coluna]);

void geraMatriz_Equacao(float **M, int linha, int coluna);
void aux_Equacao(float **M, float *aux, int coluna, int i, int z);
// void geraMatriz_Inversa();
// static void auxInversaCalc_Matriz(float **M, float **I, float *aux, int i, int z);
// void geraMatriz_Determinante();

void printMatriz(float **M, int linha, int coluna);

#endif