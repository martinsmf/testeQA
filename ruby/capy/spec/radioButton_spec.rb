describe "botoes de radio" do
  before(:each) do
    visit "https://training-wheels-protocol.herokuapp.com/radios"
  end

  it "Seleção por id", :id do
    choose("cap")
  end

  it "selec for find id and css slector", :click do
    find("input[value=iron-man]").click
  end

  after(:each) do
    sleep 3
  end
end
