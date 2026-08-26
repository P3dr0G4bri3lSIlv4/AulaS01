function calcularMedia(a, b)       
    return (a + b) / 2
end    

function encontrarMaior(a, b)
    if a > b then 
        return a  
    elseif a == b then 
        return "os valores são iguais"
    else 
        return b     
    end         
end

function calcularDiferencaAbsoluta(a, b)    
    return math.abs(a - b)
end    

function analisarNumeros(n1, n2, operacao) -- verifica a opcao escolhida    
    if operacao == "media" then 
        
        return calcularMedia(n1, n2)
    
    elseif operacao == "maior" then
        
        return encontrarMaior(n1, n2)
    
    elseif operacao == "diferenca" then    
       
        return calcularDiferencaAbsoluta(n1, n2)
    else 
        return "Operação inválida!" 
    end    
end

print("Digite o primeiro número: ")
local Primeiro = tonumber(io.read())

print("Digite o segundo número: ")
local segundo = tonumber(io.read())

print("Digite a operação (media, maior ou diferenca):")
local operacao = io.read()

if Primeiro and segundo then --vai garantir que so entramos valores numericos
    
    local resultado = analisarNumeros(Primeiro, segundo, operacao)
    print("Resultado: " .. resultado)

else
    
    print("Entrada invalida!")

end
