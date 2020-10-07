

describe "mouse hover", :hover do
    
    before(:each) do
    visit "/hovers"
    end
    
    it "quando passo o mouse sobre o Blade" do
       card =  find("img[alt*=Blade]")
       card.hover
       expect(page).to have_content "Nome: Blade"

    end

    it "quando passo o mouse sobre o pantera negra", :pantera_negra do
        card = find('img[alt^=Pantera]')
        card.hover
        expect(page).to have_content "Nome: Pantera Negra"
    end

    it "quando passo o mouse sobre o spiderman" do
        card = find('img[alt$=Aranha]')
        card.hover
        expect(page).to have_content "Nome: Homem Aranha"
    end

    after(:each) do
        sleep 0.5
    end

end