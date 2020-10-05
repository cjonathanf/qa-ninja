def diga_ola(nome)
    puts "Ola, " + nome
    
end

diga_ola("Jonathan")

# o ultimo valor declarado no metodo sempre sera o return.

def retorna_nome
    'Fernando'
    
end

Resultado = retorna_nome
puts Resultado

def soma(v1, v2)
    total = v1 + v2
    total
    
end

res = soma(10, 5)
puts res