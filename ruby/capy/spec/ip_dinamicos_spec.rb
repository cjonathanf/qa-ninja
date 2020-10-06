

describe "IDs Dinamicos", :id_dinamico do
    before(:each) do
        visit "https://training-wheels-protocol.herokuapp.com/access#"
    end    

   it "Cadastro" do

       find("input[id$=UsernameInput]").set "Jonathan"
       find("input[id^=PasswordInput]").set "1234"
       find("a[id*=GetStartedButton]").click
       expect(page).to have_content "Dados enviados. Aguarde aprovação do seu cadastro!"
       sleep 3
   end

end

