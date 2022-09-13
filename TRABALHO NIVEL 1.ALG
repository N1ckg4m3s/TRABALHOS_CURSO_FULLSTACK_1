Algoritmo "Descobir numeros primos"
// Disciplina  : DESVENDANDO ESSA CAIXA PRETA
// Descrição   : Descobir quais numeros primos tem até o escolhido
// Autor(a)    : Nicolas de Aguiar Silva
// Data atual  : 22/07/2022
Var
Valor,Quantos,i,i2,quercontinuar,Somatot:inteiro
V:real
continua,continuasegundo,testando:logico
Inicio
continua:=verdadeiro
Somatot:=0
enquanto continua faca
         escreva("Escolha um numero inteiro: ")
         leia(Valor)
         Somatot:=0
         para i de 1 ate Valor faca
                Quantos:=0
                para i2 de i ate 1 passo -1 faca
                     se (i mod i2) = 0 entao
                           Quantos:=Quantos+1
                     fimse
                fimpara
                se Quantos=2 entao
                   Somatot:=Somatot+i
                   escreval(i," é primo")
                fimse
         fimpara
         escreval("A soma de todos os numeros menores iguais a",Valor," é", Somatot)
         escreval("Quer ver os primos de outro numero? (1 para SIM, 2 para NÃO)")
         continuasegundo:=verdadeiro
         enquanto continuasegundo faca
            leia(quercontinuar)
            escolha(quercontinuar)
            caso 1
                 escreva("Ok Então, ")
                 continuasegundo:=falso
            caso 2
                 escreva("Ok, Tchau")
                 continua:=falso
                 continuasegundo:=falso
            outrocaso
                     escreval("O numero",quercontinuar," Não é valido")
                     escreval("Escolha 1 para SIM, 2 para NÃO")
            fimescolha
         fimenquanto
fimenquanto
fimalgoritmo