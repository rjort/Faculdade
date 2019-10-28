#ifndef _H_MATRIZ
#define _H_MATRIZ

// com o uso do malloc é criada a matriz M[][]
void alocaEspaco_Matriz(float **M, int linha, int coluna);
// pega do usuario numeros a serem testados
void preencheMatrizManual(float **M, int linha, int coluna);
// criar numeros aleatorios para preenchimento da matriz
void preencheMatrizAleatorio(float **M, int linha, int coluna);
// copia matriz M[][] para a matriz A[][] que é usada para equações na matriz I[][]
void copiaMatriz(float **M, float **A, int linha, int coluna);
// apenas para output da matriz
void printMatriz(float **M, int linha, int coluna);
// troca linha para realiza equacao
void trocaLinha(float **M, int linha, int coluna, int key);
// 
void geraReducao_Equacao(float **M, int linha, int coluna);
// auxiliar 'geraReducao_Equacao' para evitar repeticao de codigo
void auxReducao_Equacao(float **M, float *aux, int coluna, int i, int z);
// troca linhas zeradas
void trocaLinhaIgualZero(float **M, int linha, int coluna);
// 
int geraDeterminante_Equacao(float **M, int linha, int coluna, int *determinate);
// 
void geraInversa_Equacao(float **M, float **I, int linha, int coluna){
// auxiliar 'geraInversa_Equacao' para evitar repeticao de codigo
void auxInversa_Equacao(float **M, float **I, float *auxLinha, int linha, int coluna, int i, int j);
// cria uma matriz ja reduzida para operacaoes em 'geraInversa_Equacao'
void geraMatriz_Inversa(float **I, int linha, int coluna);
// liberar memoria 
void liberaMem(float **M);
// int postoDaMatriz(float **M, int linha, int coluna);

// funcao de 'debug'
void zeraMatriz(float **M, int linha, int coluna);

#endif