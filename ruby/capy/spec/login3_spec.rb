

describe "login com Cadastro", :login3 do
before(:each) do
    visit "https://training-wheels-protocol.herokuapp.com/access"
end

    it "Login" do
       
        #Com o escopo voce esta restringindo a area que sera automatizada
#        login_form = find("#login")

        within("#login") do
            find("input[name=username]").set "stark"
            find("input[name=password").set "jarvis!"
            click_button "Entrar"
        end

      expect(find("#flash")).to have_content "Olá, Tony Stark. Você acessou a área logada!"
    
    end

    it "cadastro de usuario", :cadastro do
        within("#signup") do
            find("input[name=username]").set "jonathan"
            find("input[name=password").set "12345"
            click_link "Criar Conta"
        end

        expect(page).to have_content "Dados enviados. Aguarde aprovação do seu cadastro!"
    end

end
