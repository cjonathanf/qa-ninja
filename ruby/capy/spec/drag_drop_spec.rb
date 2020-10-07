
describe "drag and drop", :drop do
    before(:each) do
        visit "/drag_and_drop"
    end
    it "Homen aranhha pertence ao time do stark" do
        stark = find(".team-stark .column")
        cap = find(".team-cap .column")
        spider = find("img[alt$=Aranha]")
        spider.drag_to stark

        expect(stark).to have_css "img[alt$=Aranha]"
        expect(cap).not_to have_css "img[alt$=Aranha]"

    end

    after(:each) do
        sleep 2
    end

end