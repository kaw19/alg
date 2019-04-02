algoritmo "Farrer_1_12_40"
// Função: Calcular o valor de cos(x)=1-X^2/2!+x^4/4!-X^6/6!+... com 20 termos
//         e comparar com o valor dado pela função interna cos(x).
// Autor : Prof. Kaw
// Data  : 02/04/2019

var
  TERMO, SINAL: inteiro
  SOMA, X: real
  DS: caracter
inicio
  SOMA <- 0
  FAT <- 1
  SINAL <- -1
  escreva("X (rad) = ")
  leia(X)
  para TERMO de 0 ate 40 passo 2 faca
     SOMA <- SOMA + SINAL*(X^TERMO/FAT)
     FAT <- FAT * (TERMO+1) * (TERMO+2)
     SINAL <- SINAL * (-1)
  fimpara
  escreval("Valor de cos(x):")
  escreval("  Pela série:  ", SOMA)
  escreval("  Pela função: ", cos(X))
fimalgoritmo
