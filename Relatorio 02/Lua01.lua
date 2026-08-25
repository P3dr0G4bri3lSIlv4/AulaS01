function gerarTabelaPotencias(inicio, fim, base)
    for i = inicio, fim do
        local resultado = base ^ i --faz o calculo das potencias 
        print(base .. "^" .. i .. "=" .. resultado) 
    end
end        

print ("Digite o expoente inicial: ")
local inicio = tonumber(io.read())
print ("Digite o expoente final: ")
local fim = tonumber(io.read())
print ("Digite a base: ")
local base = tonumber(io.read())

if inicio and fim and base then--vai garantir que so entramos valores numericos 
    -- puxa a função
    gerarTabelaPotencias(inicio, fim, base)
else
    print ("entrada invalida")
end 

