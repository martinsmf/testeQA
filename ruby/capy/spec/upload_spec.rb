describe "Upload" do
  before(:each) do
    visit "https://training-wheels-protocol.herokuapp.com/upload"
    @arquivo = Dir.pwd + "/spec/fixtures/arquivo_teste.txt"
    @imagem = Dir.pwd + "/spec/fixtures/icons8-github-32.png"
  end

  it "upload com arquivo txt" do
    attach_file("file-upload", @arquivo)
    click_button "Upload"

    divArquivo = find("#uploaded-file")
    expect(divArquivo.text).to eql "arquivo_teste.txt"
  end

  it "upload de imagem", :img do
    attach_file("file-upload", @imagem)
    click_button "Upload"

    divImagem = find("#uploaded-file")
    expect(divImagem.text).to eql "icons8-github-32.png"

    contemImagem = find("#new-image")
    expect(contemImagem[:src]).to include "icons8-github-32.png"
  end

  after(:each) do
    sleep 3
  end
end
