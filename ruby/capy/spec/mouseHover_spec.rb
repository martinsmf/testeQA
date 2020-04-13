describe "Mouse Hover" do
  before(:each) do
    visit "https://training-wheels-protocol.herokuapp.com/hovers"
  end

  it "Quando passo o mouse passa sobre o Blade" do
    #Asterisco para pegar um elemento que contenha algo.
    card = find("img[alt*=Blade]")
    card.hover

    expect(page).to have_content "Nome: Blade"
  end

  it "Quando mouse passa sobre o Pantera Nergra", :pantera do
    #Acento circunfexo para pegar um elemento que começa com algo
    card = find("img[alt^=Pantera]")
    card.hover
    expect(page).to have_content "Nome: Pantera Negra"
  end

  it "Quando mouse passa sobre o Homem Aranha", :aranha do
    #Dolar para pegar um elemento que termine com algo
    card = find("img[alt$=Aranha]")
    card.hover
    expect(page).to have_content "Nome: Homem Aranha"
  end

  after(:each) do
    sleep 3
  end
end
