dim quilometros as integer
dim tempo as integer  
dim pace as integer 

'leia a distância percorrida em um treino de corrida em quilômetros'
print "digite a distancia percorrida"
input quilometros 

'e tempo total gasto para completar a corrida'
print "digite o tempo gasto "
input tempo 

'Calcule o pace medio do corredor'
pace = tempo/quilometros
print "pace medio"; pace; " min/km"

sleep
