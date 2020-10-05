class AvangersHeadQuarter
    attr_accessor :list
    
    def initialize
        self.list = []
    end

    def put (avenger)
        self.list.push(avenger)
        
    end
end

#TDD (Desenvolvimento guiado por testes)

describe AvangersHeadQuarter do
    it 'deve adicionar um vingador' do
        hq = AvangersHeadQuarter.new

        hq.put('Spiderman')
        expect(hq.list).to include 'Spiderman'

    end

    it 'deve adicionar uma lista de vingadores' do
        hq = AvangersHeadQuarter.new
        hq.put('Thor')
        hq.put('Hulk')
        hq.put('Viuva Negra')

        res = hq.list.size > 0

        expect(hq.list.size).to be > 0
        expect(res).to be true    
    end

    it 'Thor deve ser o primeiro da lista' do
    hq = AvangersHeadQuarter.new

    hq.put('Thor')
    hq.put('Hulk')
    hq.put('Viuva Negra')

        expect(hq.list).to start_with ('Thor')

    end

    it 'Iroman deve ser o ultimo da lista' do
    hq = AvangersHeadQuarter.new

    hq.put('Thor')
    hq.put('Hulk')
    hq.put('Viuva Negra')
    hq.put('Iroman')    


    expect(hq.list).to end_with('Iroman')

    end

    it 'deve conter o sobre nome' do
        avenger = 'Peter Parker'

        expect(avenger).to match(/Parker/)
        expect(avenger).not_to match(/Jonathan/)

    end


end