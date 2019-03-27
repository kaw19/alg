algoritmo "menu"
// Função: Apresentar opções de tarefas à escolha do usuário
// Autor : Prof. Kaw
// Data  : 26/03/2019
var
  OPCAO: caracter

  funcao menu():caracter
  var  TAREFA : caracter
  inicio
    escreval(" >>> Menu:")
    escreval()
    escreval("     <I> n s e r ç ã o")
    escreval()
    escreval("     <A> l t e r a ç ã o")
    escreval()
    escreval("     <E> x c l u ã o ")
    escreval()
    escreval("     <F> i m")
    escreval()
    escreval("          Escolha: ")
    leia(TAREFA)
    retorne TAREFA
  fimfuncao
  
  procedimento insercao()
  var
    A: caracter
  inicio
    escreval("inserindo...")
    leia(A)
  fimprocedimento
  
  procedimento exclusao()
  var
    A: caracter
  inicio
    escreval("excluindo...")
    leia(A)
  fimprocedimento

  procedimento alteracao()
  var
    A: caracter
  inicio
    escreval("alterando...")
    leia(A)
  fimprocedimento

inicio
  repita
    OPCAO <- menu()
    escolha OPCAO
      caso "I"
        insercao()
      caso "E"
        exclusao()
      caso "A"
        alteracao()
      caso "F"
      outrocaso
        escreva("Escolha incorreta!")
        leia(OPCAO)
    fimescolha
  ate OPCAO = "F"
fimalgoritmo
