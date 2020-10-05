
require_relative '../../app/bank.rb'

describe ContaCorrente do
    describe "Saque" do
        context "quando o valor e positivo"
        before(:all) do
            @conta_corrente = ContaCorrente.new(1000.00)
            @conta_corrente.saca(200.00)
        end
        it 'entao atualiza o saldo' do
            expect(@conta_corrente.saldo).to eql 795.00
        end
    end

    context 'Deu ruim não tenho saldo' do
        before(:all) do
            @conta_corrente = ContaCorrente.new(0.00)
            @conta_corrente.saca(100.00)
        end

        it 'entao exibe mensagem' do
            expect(@conta_corrente.mensagem).to eql 'Saldo insuficiente para saque :('
        end

        it 'e o saldo permanece conforme o valor inicial' do
            expect(@conta_corrente.saldo).to eql 0.00
        end

        context 'quando o saldo e insuficiente' do
            before(:all) do
                @conta_corrente = ContaCorrente.new(500.00)
                @conta_corrente.saca(501.00)
            end
    
            it 'entao vejo mensagem' do
                expect(@conta_corrente.mensagem).to eql 'Saldo insuficiente para saque :('
            end
    
            it 'e o saldo permanece conforme o valor inicial' do
                expect(@conta_corrente.saldo).to eql 500.00
            end
        end

        context 'quando superar o limite de saque' do
        before(:all) do
            @conta_corrente = ContaCorrente.new (1000.00)
            @conta_corrente.saca(701.00)
        end
        it 'entao vejo a mensagem' do
            expect(@conta_corrente.mensagem).to eql "Limite máximo por saque é de R$ 700"
        end
        it 'e o saldo permanece' do
        expect(@conta_corrente.saldo).to eql 1000.00
        end
    end

    end
end