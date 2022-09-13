from posixpath import join
def TransformarBinario(NUM_DEC):
  BinarioInText=""
  FoiAte=-1
  Binario=[0] # ARRAY servindo como bit
  for repet in range(NUM_DEC):
    Achou=-1
    for i in range(len(Binario)):
      if Achou==-1 and Binario[i]==0: # achar algum valor na ARRAY Binario com o valor em 0
        Achou=i
    for i in range(Achou): Binario[i]=0 # Transformar todos os valores abaixo do que achou em 0
    if Achou>FoiAte: 
      FoiAte=Achou 
      Binario.append(0)
    if Achou!=-1:
      Binario[Achou]=1
  Binario.reverse()
  BinarioInText= "".join(str(x) for x in Binario)
  #for i in range(FoiAte+1):
  #  BinarioInText+=str(Binario[FoiAte-i])
  print("O Valor em Binario é ",BinarioInText)
Continua=True
while Continua:
  Numero=eval(input("Informe um numero decimal que queira tansformar em binario: "))
  if type(Numero)==int:
    TransformarBinario(Numero)
    Continua=False
  else:
    print("O numero informado é {",type(Numero),"}")
