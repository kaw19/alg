algoritmo "Farrer_1.12.62 - Eq. Diferencial Ordinária"
// Função: Solução de uma Eq. Diferencial pelo método iterativo PVI - Problema
//         do Valor Inicial: determinar y(x) p/ y'(x) = f(x,y(x)) e y(x0) = y0.
//         Método: Dada Eq. Difer. Ord.: dy(x)/dx = f(x,y(x))
//                 Faz-se a integração:  y(x) = y(x0) + int_{x0}^{x}f(s,y(s))ds
//                 A integral é aproximada pela área do retângulo: h.f(x0,y0)
//                 onde h é o passo da integração: h = (xsup - xinf)/N
// Autor : Prof. Kaw
// Data  : 02/04/2019

funcao f(X,Y:real):real
  retorne 4. - X + 2.*Y      // outro exemplo: y' = 4 - x + 2.y
fimfuncao                    // Sol. part. analít.: y = (-7 + 2.x + 11.e^(2x))/4

var
  N, I: inteiro
  NEPER, H, X0, Y0, XN, Y, REF: real
inicio
  escreval("Solução da Eq. Diferencial pelo Método Iterativo PVI")
  escreval("Eq. Diferencial: y' = 4-x+2y com y(0) = 1.")
  NEPER <- 2.718281828       // número de Neper
  Y0 <- 1.                   // valor inicial (condição inicial)
  X0 <- 0.                   // limite inferior do intervalo
  XN <- 2.                   // limite superior do intervalo
  N <- 40                    // qtde de subintervalos (qto maior mais preciso)
  H <- (XN - X0)/N           // tamanho do passo de iteração
  para I de 1 ate N faca
    Y <- Y0 + H * f(X0, Y0)  // método PVI
    REF <- (-7. + 2.*X0 + 11.*exp(NEPER,2.*X0))/4.  // solução analítica
    escreval("y(", X0:4:2, ") = ", Y:18:14, "   Refer. = ", REF:18:14)
    Y0 <- Y
    X0 <- X0 + H
  fimpara
fimalgoritmo
