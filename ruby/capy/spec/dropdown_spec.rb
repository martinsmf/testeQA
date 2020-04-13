describe "caixa de opições", :dropdown do
  it "etem especifico simples" do
    visit "https://training-wheels-protocol.herokuapp.com/dropdown"
    select("Loki", from: "elementoDropddowndown")
    sleep 3
  end

  it "item especifico com o find" do
    visit "https://training-wheels-protocol.herokuapp.com/dropdown"
    elementoDropdown = find(".avenger-list")
    elementoDropdown.find("option", text: "Scott Lang").select_option
    sleep 3
  end

  it "Qualquer item", :sample do
    visit "https://training-wheels-protocol.herokuapp.com/dropdown"
    elementoDropdown = find(".avenger-list")
    elementoDropdown.all("option").sample.select_option
    sleep 3
  end
end

# .find precisa de uma busca especifica.
# .all pega todos os elementos do select.
# .sample faz um serotei no elementos que estão no vetor.
