describe "Drag and drop" do
  before(:each) do
    visit "https://training-wheels-protocol.herokuapp.com/drag_and_drop"
  end

  it "Movendo" do
    stark = find(".team-stark .column")
    cap = find(".team-cap .column")
    spider = find("img[alt$=Aranha]")
    spider.drag_to stark

    #Verificar se foi movido para time do stark
    expect(stark).to have_css "img[alt$=Aranha]"
    expect(cap).not_to have_css "img[alt$=Aranha]"

    #Verificar se retornou pro time cap
    spider.drag_to cap

    expect(cap).to have_css "img[alt$=Aranha]"
    expect(stark).not_to have_css "img[alt$=Aranha]"
  end
end
