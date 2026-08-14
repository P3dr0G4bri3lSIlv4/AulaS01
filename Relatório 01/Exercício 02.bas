dim PIN as integer 
dim PIN_correto as integer = 1234

'Peça para o usuário digitar o PIN de acesso'
print "digite o PIN de acesso"
input PIN

'loop que se repete enquanto o pin estiver errado'
while PIN <> PIN_correto
    print "PIN invalido. Tente novamente." 
    input PIN
wend
'se ele estiver certo ele vai sair do loop e printar a mensagem'

print "Transacao autorizada!" 

sleep

