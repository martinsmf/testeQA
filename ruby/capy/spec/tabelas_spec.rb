describe "Tabelas" do
  before(:each) do
    visit "https://training-wheels-protocol.herokuapp.com/"

    click_link "Tabelas"
  end

  it "Deve exibir o salario do Stark", :stark do
    atores = all("table tbody tr")

    stark = atores.detect { |ator| ator.text.include?("Robert Downey Jr") }

    puts stark.text
    expect(stark.text).to include "10.000.000"
  end

  it "deve exibir o salario do vin diesel", :diesel do
    atores = find("table tbody tr", text: "@vindiesel")

    expect(atores).to have_content "10.000.000"
  end

  it "deve exibir velozes", :filme do
    atores = all("table tbody tr")

    toreto = atores.detect { |ator| ator.text.include?("Vin Diesel") }

    expect(toreto.text).to include "Velozes e Furiosos"
  end

  it "Buscando pela coluna", :coluna do
    atores = find("table tbody tr", text: "@vindiesel")
    diesel = atores.all("td")[2].text

    expect(diesel).to eql "Velozes e Fuia"
  end

  it "deve exibir o insta do chris evans", :evans do
    atores = find("table tbody tr", text: "Chris Evans")
    evans = atores.all("td")[4].text

    expect(evans).to eql "@teamcevans"
  end

  it "deve selecionar Chris Prat para remoção" do
    busca = find("table tbody tr")

    prat = busca.detect { |detecta| detecta.text.include?("Chris Pratt") }
    #prat.find('a', text: 'delete').click
    prat.find('a[class="delete"]').click
  end
end
