algoritmo "Farrer_1.12.62 - Eq. Diferencial Ordin�ria"
// Fun��o: Solu��o de uma Eq. Diferencial pelo m�todo iterativo PVI - Problema
//         do Valor Inicial: determinar y(x) p/ y'(x) = f(x,y(x)) e y(x0) = y0.
//         M�todo: Dada Eq. Difer. Ord.: dy(x)/dx = f(x,y(x))
//                 Faz-se a integra��o:  y(x) = y(x0) + int_{x0}^{x}f(s,y(s))ds
//                 A integral � aproximada pela �rea do ret�ngulo: h.f(x0,y0)
//                 onde h � o passo da integra��o: h = (xsup - xinf)/N
// Autor : Prof. Kaw
// Data  : 02/04/2019

funcao f(X,Y:real):real
  retorne 4. - X + 2.*Y      // outro exemplo: y' = 4 - x + 2.y
fimfuncao                    // Sol. part. anal�t.: y = (-7 + 2.x + 11.e^(2x))/4

var
  N, I: inteiro
  NEPER, H, X0, Y0, XN, Y, REF: real
inicio
  escreval("Solu��o da Eq. Diferencial pelo M�todo Iterativo PVI")
  escreval("Eq. Diferencial: y' = 4-x+2y com y(0) = 1.")
  NEPER <- 2.718281828       // n�mero de Neper
  Y0 <- 1.                   // valor inicial (condi��o inicial)
  X0 <- 0.                   // limite inferior do intervalo
  XN <- 2.                   // limite superior do intervalo
  N <- 40                    // qtde de subintervalos (qto maior mais preciso)
  H <- (XN - X0)/N           // tamanho do passo de itera��o
  para I de 1 ate N faca
    Y <- Y0 + H * f(X0, Y0)  // m�todo PVI
    REF <- (-7. + 2.*X0 + 11.*exp(NEPER,2.*X0))/4.  // solu��o anal�tica
    escreval("y(", X0:4:2, ") = ", Y:18:14, "   Refer. = ", REF:18:14)
    Y0 <- Y
    X0 <- X0 + H
  fimpara
fimalgoritmo
