algoritmo "menu"
// Função: Apresentar opções de tarefas (manipulação vetorial) à escolha do usuário
// Autor : Prof. Kaw
// Data  : 26/03/2019
var
  OPCAO: caracter
  ULTIMO: inteiro
  MODELO: vetor [1..20] de caracter
  FABRIC: vetor [1..20] de caracter
  ASSENT: vetor [1..20] de inteiro
  
  funcao menu():caracter
  var  TAREFA : caracter
  inicio
    limpatela()
    escreval(" >>> Menu:")
    escreval()
    escreval("     <I> n s e r ç ã o")
    escreval()
    escreval("     <A> l t e r a ç ã o")
    escreval()
    escreval("     <E> x c l u ã o ")
    escreval()
    escreval("     <L> i s t a g e m")
    escreval()
    escreval("     <F> i m")
    escreval()
    escreval("          Escolha: ")
    leia(TAREFA)
    retorne TAREFA
  fimfuncao
  
  procedimento insercao()
  var
    RESP: caracter
  inicio
  limpatela()
  escreval("Inserção de Aeronaves...")
  escreval()
    se ULTIMO < 20 entao
      ULTIMO <- ULTIMO + 1
      escreva("Modelo:        ")
      leia(MODELO[ULTIMO])
      escreva("Fabricante:    ")
      leia(FABRIC[ULTIMO])
      escreva("Qtde Assentos: ")
      leia(ASSENT[ULTIMO])
      escreval()
      escreva("Confirma inserção de Aeronave?  [S/N]")
      leia(RESP)
      se (RESP = "N") ou (RESP = "n") entao
        ULTIMO <= ULTIMO - 1
      fimse
    senao
      escreval("Qtde Máxima de Aeronaves foi atigindo!")
      escreval("Qq. tecla + [Enter] para continuar...")
      leia(RESP)
    fimse
  fimprocedimento
  
  procedimento listagem()
  var
    I: inteiro
    RESP: caracter
  inicio
  limpatela()
  escreval("Listagem de Aeronaves...")
  escreval()
    se ULTIMO > 0 entao
      escreval("----------------------------------------------")
      escreval("Modelo              Fabricante        Assentos")
      escreval("----------------------------------------------")
      para i de 1 ate ULTIMO faca
        escreval(MODELO[I]:20, FABRIC[I]:20, ASSENT[I]:3)
      fimpara
      escreval("----------------------------------------------")
    senao
      escreval("Não há Aeronaves cadastradas!")
    fimse
    escreval("Qq. tecla + [Enter] para continuar...")
    leia(RESP)
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
  ULTIMO <- 0
  repita
    OPCAO <- menu()
    escolha OPCAO
      caso "I"
        insercao()
      caso "E"
        exclusao()
      caso "A"
        alteracao()
      caso "L"
        listagem()
      caso "F"
      outrocaso
        escreva("Escolha incorreta!")
        leia(OPCAO)
    fimescolha
  ate OPCAO = "F"
fimalgoritmo
