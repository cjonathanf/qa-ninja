class Conta
    attr_accessor :saldo, :nome

    def initialize(nome)
        self.saldo = 0.0
        self.nome = nome
        
    end
    def deposita(valor)
        self.saldo += valor
        # puts "depoistando a quantidade de " + valor.to_s + " reais"
        
        #interpolacao
        puts "Depoistando a quantia de #{valor} reais na conta de #{self.nome}."
    end
end

c = Conta.new("Jonathan")

#E necessario definir o tipo da variavel, ou na interpolacao ele nao reconhecera.
#c.saldo = 0.0

c.deposita(100.00) 
puts c.saldo

c.deposita(10.00)
puts c.saldo
puts c.nome