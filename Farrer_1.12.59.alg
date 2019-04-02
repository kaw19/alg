algoritmo "Farrer_1_12_59"
// Função: Cálculo da integral da função 4/(1+x^2) de 0 a 1.
// Autor : Prof. Kaw
// Data  : 28/03/2019
var
  AREA, H, SOMA, A, B: real
  I, N: inteiro
  
  funcao f(X:real):real
    retorne 1/(1+X^2)
  fimfuncao
  
inicio
  N <- 10000              // qtde de trapézios
  B <- 1
  A <- 0
  H <- (B - A)/N         // base do trapézio
  SOMA <- 0
  para I de 1 ate N faca
    //escreval(f(H*I):5:2)
    AREA <- (f(H*I) + f(H*(I+1)))/2*H
    SOMA <- SOMA + AREA
  fimpara
  escreval("Valor de Pi: ", SOMA*4)
fimalgoritmo
