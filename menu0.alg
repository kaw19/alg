algoritmo "menu"
// Fun��o: Apresentar op��es de tarefas � escolha do usu�rio
// Autor : Prof. Kaw
// Data  : 26/03/2019
var
  OPCAO: caracter

  funcao menu():caracter
  var  TAREFA : caracter
  inicio
    escreval(" >>> Menu:")
    escreval()
    escreval("     <I> n s e r � � o")
    escreval()
    escreval("     <A> l t e r a � � o")
    escreval()
    escreval("     <E> x c l u � o ")
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
