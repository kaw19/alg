algoritmo "dias"
// Função :  dias decorridos entre duas datas (exerc. 1.12.23 Farrer e outros)
// Autor :   Prof. Cláudio
// Data :    16/04/2015
var
  DIA1,MES1,ANO1,DIA2,MES2,ANO2,DIAS,MESES,ANOS: inteiro
inicio
  repita
    escreva("Data mais ANTIGA (dd,mm,aaaa):")
    leia(DIA1)
    se DIA1 < 0 entao                        // flag
       interrompa
    fimse
    leia(MES1)
    leia(ANO1)
    escreva("Data mais ATUAL  (dd,mm,aaaa):")
    leia(DIA2)
    leia(MES2)
    leia(ANO2)
    ANOS <- ANO2 - ANO1
    MESES <- MES2 - MES1
    se MESES < 0 entao
       ANOS <- ANOS - 1
       MESES <- MESES + 12
    fimse
    DIAS <- DIA2 - DIA1
    se DIAS < 0 entao
       MESES <- MESES - 1
       se MESES < 0 entao
          ANOS <- ANOS - 1
          MESES <- MESES + 12
       fimse
       se MES1=2 entao
          se (ANO1%400) ou ((ANO1%4)e(nao(ANO1%100)) entao
             DIAS <- DIAS + 29
          senao
             DIAS <- DIAS + 28
          fimse
       senao
          se (MES1=1)ou(MES1=3)ou(MES1=5)ou(MES1=7)ou(MES1=8)ou(MES1=10)ou(MES1=12) entao
             DIAS <- DIAS + 31
          senao
             DIAS <- DIAS + 30
          fimse
       fimse
    fimse
    DIAS <- DIAS + (MESES + ANOS * 12) * 30
    escreval("Dias decorridos entre ",DIA1,"/",MES1,"/",ANO1," e ",DIA2,"/",MES2,"/",ANO2,": ",DIAS)
  fimrepita
fimalgoritmo
