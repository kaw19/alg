algoritmo "Farrer_1.12.62 - Eq. Diferencial"
// Função: Solução de uma Eq. Diferencial pelo método iterativo PVI - Problema
//         do Valor Inicial: determinar y(x) p/ y'(x) = f(x,y(x)) e y(x0) = y0.
//         Método: Dada a eq. diferencial: dy(x)/dx = f(x,y(x))
//                 Busca-se a integração:  y(x) = y(x0) + int{x0}{x}f(s,y(s))ds
//                 A integral é aproximada pela área do retângulo: h.f(x0,y0)
// Autor : Prof. Kaw
// Data  : 02/04/2019

funcao f(X,Y:real):real
  retorne X*Y                // dado no exercício: y' = x.y
fimfuncao

var
  N, I: inteiro
  H, X0, Y0, XN, Y: real
inicio
  escreval("Solução da Eq. Diferencial pelo Método Iterativo PVI")
  escreval("Eq. Diferencial: y' = x.y com y(0) = 1.")
  Y0 <- 1.                   // valor inicial (condição inicial)
  X0 <- 0.                   // limite inferior do intervalo
  XN <- 1.                   // limite superior do intervalo
  N <- 10                    // qtde de subintervalos
  H <- (XN - X0)/N           // tamanho do passo de iteração
  para I de 1 ate N faca
    Y <- Y0 + H * f(X0, Y0)
    escreval("y(", X0:2:1, ") = ", Y)
    Y0 <- Y
    X0 <- X0 + H
  fimpara
fimalgoritmo
