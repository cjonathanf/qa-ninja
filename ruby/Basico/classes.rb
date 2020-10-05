#Ruby e uma linguagem considerada puramente orientada a objetos
#Porque no Ruby tudo sao objetos

#Classe possuio atributos e metodos
#Caracteristicas e Acoes

#Carro(Nome, Marca, Modelo, Cor, Quantidade de Portas)
# Ligar, buzinar, parar. etc ...

class Carro
    attr_accessor :nome

    def Ligar
        puts "O Carro esta pronto para iniciar o trajeto."
    end
    
end

civic = Carro.new

civic.nome = "Civic"

puts civic.nome

civic.Ligar 