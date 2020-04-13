describe "Dynamic Control" do
  before(:each) do
    visit "https://training-wheels-protocol.herokuapp.com/dynamic_controls"
  end

  it "Quando habilita o campo" do
    #Exite um campo com o identificar se existe um campo com o id = a muvie e com a propriedade disabled
    #Quando tem a propriedade disable true, o campo está desabilitado
    #Quando não tem a propriedade, o campo esta habilitado.

    #O campo deve começar desabilitado.
    existe = page.has_field? "movie", disabled: true
    expect(existe).to eql true

    #O campo deve ser habilitado.
    click_button "Habilita"

    naoExiste = page.has_field? "movie", disabled: false
    expect(existe).to eql true
  end
end
