describe "ID dinamico" do
  before(:each) do
    visit "https://training-wheels-protocol.herokuapp.com/"

    find('a[href="/access"]').click
  end

  it "Testando cadastro", :id_dinamico do
    find("input[id$=wtUsernameInput]").set "Matheus"
    find("input[id^=PasswordInput]").set "123@4Aa"
    find("a[id*=wtGetStartedButton]").click

    expect(find("#result")).to have_content "Dados enviados. Aguarde aprovação do seu cadastro!"
  end
end
