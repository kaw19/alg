Algoritmo "MediaTurma"
// Disciplina  : uP/uC's
// Professor   : Kaw
// Descri��o   : calcula a m�dia de 3 notas de 10 alunos,
//               e mostra resultado e m�dia da turma
//               e a qtde de NERD's(m�dia do aluno > m�dia da turma)
// Data atual  : 19/03/2019
Var
  I, N1, N2, N3, SOMAALUNO, NERDS: inteiro
  MDALUNO, MDTURMA, SOMATURMA: real
  RESULTADO: caracter
Inicio
  SOMATURMA <- 0
  NERDS <- 0
  para I de 1 ate 10 faca
    SOMAALUNO <- 0
    escreval("Aluno: ", I)
    escreva("Entre nNotas: ")
    leia(N1, N2, N3)
    MDALUNO <- (N1+N2+N3)/3
    se MDALUNO >= 6 entao
      RESULTADO <- "APROV."
    senao
      RESULTADO <- "REPROV."
    fimse
    escreval("M�dia Aluno ",I,": ",MDALUNO," --> ",RESULTADO)
    SOMATURMA <- SOMATURMA + MDALUNO
  fimpara
  MDTURMA <- SOMATURMA / 10
  para I de 1 ate 10 faca
    SOMAALUNO <- 0
    escreval("Aluno: ", I)
    escreva("Entre nNotas: ")
    leia(N1, N2, N3)
    MDALUNO <- (N1+N2+N3)/3
    se MDALUNO > MDTURMA entao
      NERDS <- NERDS + 1
    fimse
  fimpara
  escreval("M�dia da turma: ",MDTURMA)
  escreval("Qtde de NERDs:  ",NERDS)
Fimalgoritmo