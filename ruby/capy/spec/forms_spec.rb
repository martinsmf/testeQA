describe "Forms" do
  it "Login com sucesso" do
    visit "https://training-wheels-protocol.herokuapp.com/login"

    fill_in "userId", with: "stark"
    fill_in "passId", with: "jarvis!"
    click_button "Login"
    #Verificando se o elemento esta visivel.
    expect(find("#flash").visible?).to be true
    #expect(find("#flash").text).to include "Olá, Tony Stark. Você acessou a área logada!"

    #Aqui você esta perguntando se no elemento contem o texto. No anterior você obtem o texte e pergunta se é igual ao esperado.
    expect(find("#flash")).to have_content "Olá, Tony Stark. Você acessou a área logada!"
  end
end
