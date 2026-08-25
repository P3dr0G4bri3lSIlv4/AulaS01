function contarOcorrencias(tabela, alvo)
    local contador = 0
    for i = 1, #tabela do --vasculha a tabela atraz do alvo 
        if tabela[i] == alvo then
            contador = contador + 1 --contabiliza o alvo 
        end
    end 
    return contador            
end

print("Digite a quantidade de elementos (N): ")
local N = tonumber(io.read())
local tabela = {}

if N and N > 0 then--garente que eu estou entrando com valores validos 
    
    --entrando com os valores da tabela 
    for i = 1, N do    
        print("Digite o elemento "..i..": ")
        local elemento = tonumber(io.read())
        table.insert(tabela, elemento) --vai inserir o elemento na tabela 
    end

    --inserindo o valor a ser buscado 
    print("Digite o número X a ser buscado: ")
    local X = tonumber(io.read())
    
    if X then--garante que eu estou entrando com valores validos
        local repeticao = contarOcorrencias(tabela, X)
        print("O número "..X.." aparece "..repeticao.." vez(es) na tabela.")
    else
        print("valor invalido inserido")
    end   
else
    print("valor invalido inserido")
end         