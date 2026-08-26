function filtrarMaiores(tabela, limite)
    local tabelaDosMaiores = {}
    for i = 1, #tabela do -- vasculha a tabela atraz do(s) valore(s) maior(es) do que K  
        if tabela[i] > limite then
            table.insert(tabelaDosMaiores, tabela[i]) -- ta inserindo os valores maiores do que K em uma Tabela separada
        end
    end 
    return tabelaDosMaiores            
end

print("Digite a quantidade de elementos (N): ")
local N = tonumber(io.read())
local tabela = {}

if N and N > 0 then -- garente que eu estou entrando com valores validos 
    
    -- entrando com os valores da tabela 
    for i = 1, N do    
        print("Digite o elemento "..i..": ")
        local elemento = tonumber(io.read())
        table.insert(tabela, elemento) -- vai inserir o elemento na tabela 
    end

    -- inserindo o valor a ser comparado 
    print("Digite o valor limite (K):  ")
    local K = tonumber(io.read())
    
    if K then -- garante que eu estou entrando com valores validos
        
        local resultado= filtrarMaiores(tabela, K)
        print("--- Elementos maiores que "..K.." ---")
        for i = 1, #resultado do -- vasculha a tabela me devolvendo os valores da tabela 
            print(resultado[i])
        end    
    
    else
        print("valor invalido inserido")
    end   

else
    print("valor invalido inserido")
end         
