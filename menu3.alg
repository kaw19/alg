algoritmo "menu"
// Fun��o: Apresentar op��es de tarefas (manipula��o vetorial) � escolha do usu�rio
//         Cadastro de aeronaves.
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
    escreval("     <I> n s e r � � o")
    escreval()
    escreval("     <A> l t e r a � � o")
    escreval()
    escreval("     <E> x c l u � o ")
    escreval()
    escreval("     <L> i s t a g e m")
    escreval()
    escreval("     <F> i m")
    escreval()
    escreva("          Escolha: ")
    leia(TAREFA)
    retorne TAREFA
  fimfuncao
  
  procedimento insercao()
  var
    RESP: caracter
  inicio
  limpatela()
  escreval("Inser��o de Aeronaves...")
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
      escreva("Confirma inser��o de Aeronave?  [S/N]")
      leia(RESP)
      se (RESP = "N") ou (RESP = "n") entao
        ULTIMO <- ULTIMO - 1
      fimse
    senao
      escreval("Qtde M�xima de Aeronaves foi atigindo!")
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
      escreval("------------------------------------------------")
      escreval("Modelo              Fabricante          Assentos")
      escreval("------------------------------------------------")
      para i de 1 ate ULTIMO faca
        escreval(MODELO[I]:20, FABRIC[I]:20, ASSENT[I]:6)
      fimpara
      escreval("------------------------------------------------")
    senao
      escreval("N�o h� Aeronaves cadastradas!")
    fimse
    escreval("[Enter] para continuar...")
    leia(RESP)
  fimprocedimento

  procedimento exclusao()
  var
    RESP: caracter
    ACHOU: logico
    I, J: inteiro
  inicio
  limpatela()
  escreval("Exclus�o de Aeronaves...")
  escreval()
    se ULTIMO > 0 entao
      escreva("Modelo: ")
      leia(RESP)
      ACHOU <- falso
      para I de 1 ate ULTIMO faca
        se MODELO[I] = RESP entao
          ACHOU <- verdadeiro
          escreval("Modelo:        ", MODELO[I])
          escreval("Fabricante:    ", FABRIC[I])
          escreval("Qtde Assentos: ", ASSENT[I])
          escreval()
          escreva("Confirma exclus�o? [S/N] ")
          leia(RESP)
          se (RESP = "S") ou (RESP = "s") entao
            para J de I ate ULTIMO faca
              MODELO[J] <- MODELO[J+1]
              FABRIC[J] <- FABRIC[J+1]
              ASSENT[J] <- ASSENT[J+1]
            fimpara
            ULTIMO <- ULTIMO - 1
            escreval("Exclus�o realizada!")
          senao
            escreval("Exclus�o cancelada!")
          fimse
        fimse
      fimpara
      se ACHOU = falso entao
        escreval("Registro n�o encontrado!")
      fimse
    senao
      escreval("N�o h� Aeronaves cadastradas!")
    fimse
    escreval("[Enter] para continuar...")
    leia(RESP)
  fimprocedimento

  procedimento alteracao()
  var
    RESP, FAB: caracter
    ACHOU: logico
    I, J, LUG: inteiro
  inicio
  limpatela()
  escreval("Altera��o de Aeronaves...")
  escreval()
    se ULTIMO > 0 entao
      escreva("Modelo: ")
      leia(RESP)
      ACHOU <- falso
      para I de 1 ate ULTIMO faca
        se MODELO[I] = RESP entao
          ACHOU <- verdadeiro
          escreval("Fabricante:    ", FABRIC[I])
          escreval("Qtde Assentos: ", ASSENT[I])
          escreval()
          escreva("Fabricante:    ")
          leia(FAB)
          escreva("Qtde Assentos: ")
          leia(LUG)
          escreval()
          escreva("Confirma altera��o? [S/N] ")
          leia(RESP)
          se (RESP = "S") ou (RESP = "s") entao
            FABRIC[I] <- FAB
            ASSENT[I] <- LUG
            escreval("Altera��o realizada!")
          senao
            escreval("Altera��o cancelada!")
          fimse
        fimse
      fimpara
      se ACHOU = falso entao
        escreval("Registro n�o encontrado!")
      fimse
    senao
      escreval("N�o h� Aeronaves cadastradas!")
    fimse
    escreval("[Enter] para continuar...")
    leia(RESP)
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
