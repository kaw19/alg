algoritmo "dias"
// Função :  dias decorridos desde 01.01.0000
// Autor :   Prof. Cláudio
// Data :    14/03/2019
var
  DIA1, MES1, ANO1: inteiro
  BIS, DIAS: inteiro
  ANO, MES, LIM: inteiro
  
inicio
  repita
    escreva("Data (dd,mm,aaaa): ")
    leia(DIA1)
    se (DIA1 <= 0) entao                      // flag
       interrompa
    fimse
    leia(MES1,ANO1)

    BIS <- 0                                  // contador de anos bissextos
    se ANO1 > 4 entao
      se MES1 > 2 entao
        LIM <- ANO1                           // considera o ano da data
      senao
        LIM <- ANO1 - 1                       // considera até ano anterior à data
      fimse
      escreva("Contando anos bissextos... ")
      para ANO de 1 ate LIM faca
        se ((ANO%400=0) ou ((ANO%4=0) e (nao(ANO%100=0))))  entao
          BIS <- BIS + 1
        fimse
      fimpara
      escreval(BIS, " anos.")
    fimse

    DIAS <- 0
    para MES de 1 ate MES1-1 faca
      escolha MES
        caso 2
          DIAS <- DIAS + 28
        caso 4,6,9,11
          DIAS <- DIAS + 30
        outrocaso
          DIAS <- DIAS + 31
      fimescolha
    fimpara
    
    DIAS <- DIAS + ANO1 * 365 + BIS + DIA1 - 1
    escreval("Dias decorridos entre:",DIA1,"/",MES1,"/",ANO1," e 01/01/0000: ",DIAS)
    escreval("Anos bissextos: ", BIS)
  fimrepita
fimalgoritmo
