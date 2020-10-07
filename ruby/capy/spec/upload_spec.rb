

describe "upload", :upload do
    before(:each)do
    visit "/upload"    
    @arquivo = Dir.pwd + "/spec/fixtures/arquivo.txt"
    @imagem = Dir.pwd + "/spec/fixtures/fortnite.jpg"
    end

    it "upload com arquivo texto" do
        attach_file("file-upload", @arquivo)
        click_button "Upload"
        arquivo = find("#uploaded-file")
        expect(arquivo.text).to eql "arquivo.txt"
    end

    it "upload com arquivo de imagem", :upload_imagem do
        attach_file("file-upload", @imagem)
        click_button "Upload"
        img = find("#new-image")
        expect(img[:src]).to include '/uploads/fortnite.jpg'
    end

    after(:each)do
        sleep 5
    end
end