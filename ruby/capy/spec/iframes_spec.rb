

describe "Iframes", :iframes do
    

    describe "bom", :bom do
        before(:each) do
            visit "https://training-wheels-protocol.herokuapp.com/nice_iframe"
    end

    it "adicionando ao carrinho" do
        scroll_to(:bottom)
        within_frame("burgerId") do
            produto = find(".menu-item-info-box", text: "REFRIGERANTE")
            produto.find(".add-to-cart").click
            expect(find("#cart")).to have_content "R$ 4,50"
            sleep 3

        end
    end
end

        describe "ruim", :bad do
            before(:each) do
                visit "https://training-wheels-protocol.herokuapp.com/bad_iframe"
        end

        it "Carrinho deve estar vazio" do
            script = '$(".box-iframe").attr("id", "tempId")';
            page.execute_script(script)

            within_frame('tempId') do
                expect(find("#cart")).to have_content "Seu carrinho está vazio!"
                sleep(3)
            end
        end

    end
end