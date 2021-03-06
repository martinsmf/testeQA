describe "Simular teclado. " do
  before(:each) do
    visit "https://training-wheels-protocol.herokuapp.com/key_presses"
  end

  it "enviando teclas", :espaco do
    #simbolos
    teclas = %i[tab escape space enter shift control alt]

    teclas.each do |t|
      find("#campo-id").send_keys t
      # expect(page).to have_content '#result'
      expect(find("#result")).to have_content "You entered: " + t.to_s.upcase
    end
  end

  it "Validando alfabeto", :letras do
    letras = %w[a s d f g h j k l]

    letras.each do |letra|
      find("#campo-id").send_keys letra
      expect(find("#result")).to have_content "You entered: " + letra.to_s.upcase
    end
  end
end
