algoritmo "Farrer_1.12.62 - Eq. Diferencial"
// Fun��o: Solu��o de uma Eq. Diferencial pelo m�todo iterativo PVI - Problema
//         do Valor Inicial: determinar y(x) p/ y'(x) = f(x,y(x)) e y(x0) = y0.
//         M�todo: Dada a eq. diferencial: dy(x)/dx = f(x,y(x))
//                 Busca-se a integra��o:  y(x) = y(x0) + int{x0}{x}f(s,y(s))ds
//                 A integral � aproximada pela �rea do ret�ngulo: h.f(x0,y0)
// Autor : Prof. Kaw
// Data  : 02/04/2019

funcao f(X,Y:real):real
  retorne X*Y                // dado no exerc�cio: y' = x.y
fimfuncao

var
  N, I: inteiro
  H, X0, Y0, XN, Y: real
inicio
  escreval("Solu��o da Eq. Diferencial pelo M�todo Iterativo PVI")
  escreval("Eq. Diferencial: y' = x.y com y(0) = 1.")
  Y0 <- 1.                   // valor inicial (condi��o inicial)
  X0 <- 0.                   // limite inferior do intervalo
  XN <- 1.                   // limite superior do intervalo
  N <- 10                    // qtde de subintervalos
  H <- (XN - X0)/N           // tamanho do passo de itera��o
  para I de 1 ate N faca
    Y <- Y0 + H * f(X0, Y0)
    escreval("y(", X0:2:1, ") = ", Y)
    Y0 <- Y
    X0 <- X0 + H
  fimpara
fimalgoritmo
