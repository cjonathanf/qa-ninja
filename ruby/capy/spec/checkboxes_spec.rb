
describe "caixas de selecao", :checkboxes do
    before(:each) do
        visit "/checkboxes"
    end
    
    it "marcando uma opcao" do
    #check funciona para atributos de name e id
        check("thor")
    end

    it "desmarcando uma opcao" do
        uncheck("antman")
    end

    it "marcando com find set true" do
        find("input[value=cap]").set(true)
    end

    it "desmarcando com find set false" do
        find("input[value=guardians]").set(false)
    end

    after(:each) do
        sleep 3
    end

end