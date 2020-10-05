class Veiculos
    attr_accessor :nome, :marca, :modelo
        def initialize(nome, marca, modelo)
            self.nome = nome
            self.marca = marca
            self.modelo = modelo
        end
    def Ligar
        puts "#{nome} esta pronto para iniciar o trajeto!"
        
    end

    def buzinar
        puts "beep! beep!"
    
    end

end


class Carro < Veiculos

        def dirigir
            puts "#{nome} iniciando o trajeto"
        end

end

class Moto < Veiculos

    def pilotar
        puts "#{nome} iniciando o trajeto"
    end

end

civic = Carro.new("Civic", "Honda", "SI")
puts civic.nome
civic.Ligar
civic.buzinar
civic.dirigir

lancer = Carro.new("Lancer", "Mitsubishi", "EVO")
lancer.Ligar
lancer.buzinar
lancer.dirigir

fazer = Moto.new("Fazer", "Yamaha", "250x")
fazer.Ligar
fazer.buzinar
fazer.pilotar
        