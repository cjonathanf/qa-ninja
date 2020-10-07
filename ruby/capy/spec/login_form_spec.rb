

describe "Forms", :forms do
    it "Login com sucesso" do
        visit "/login"

        fill_in "userId", with: "stark"
        fill_in "passId", with: "jarvis!"
        click_button "Login"

        expect(find("#flash").visible?).to be true

     #   expect(find("#flash").text).to include "Olá, Tony Stark. Você acessou a área logada!"

        expect(find("#flash")).to have_content "Olá, Tony Stark. Você acessou a área logada!"

    end

        it "senha incorreta" do
            visit "/login"
            fill_in "userId", with: "stark"
            fill_in "passId", with: "jarvas!"
            click_button "Login"

            expect(find("#flash").visible?).to be true
    
            expect(find("#flash")).to have_content "Senha é invalida!"

            page.save_screenshot("log/senha_incorreta.png")
    
        end

        it "usuário não cadastrado" do
            visit "/login"
            fill_in "userId", with: "starko"
            fill_in "passId", with: "jarvas!"
            click_button "Login"

            expect(find("#flash").visible?).to be true
    
            expect(find("#flash")).to have_content "O usuário informado não está cadastrado!"

        end

        after(:each) do |e|
            nome = e.description.gsub(/[^A-Za-z0-9 ]/, '').tr(' ', '_')
            puts nome
            page.save_screenshot('log/' + nome + ".png" )

        end
end

