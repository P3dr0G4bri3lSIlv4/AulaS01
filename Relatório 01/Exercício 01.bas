dim peso as integer 
dim agua_ingerida as integer 
dim meta_de_agua as integer

'entre com o peso e a quantidade de agua ingerida'
print "Quanto voce pesa ?"
input peso
print "Diga o quanto de agua voce bebeu hoje em mili litros ?"
input agua_ingerida 

'calcule meta diaria recomendada de agua'
meta_de_agua = peso * 35

'Se a quantidade ingerida for maior ou igual a meta recomendada, exiba a mensagem'

if meta_de_agua <= agua_ingerida then
    print "Meta atingida!"
else
    print "Meta nao atingida"
end if 
sleep
