describe "Qaundo tem elementros com o o valor dos atributos iguais" do
  before(:each) do
    visit "https://training-wheels-protocol.herokuapp.com"

    find('a[href="/access"]').click
    #ou click_lind 'Login com Cadastro'
  end
  it "Fazendo login " do
    login = find("#login")

    # login.find("input[name=username]").set "stark"
    # login.find("input[name=password]").set "jarvis!"
    # find('#login imput[name=password]').set "jarvis!"

    #Com escopo, maneira melhor para fazer.
    within("#login") do
      find("input[name=username]").set "stark"
      find("input[name=password]").set "jarvis!"
    end

    click_button "Entrar"
    expect(find("#flash")).to have_content "Olá, Tony Stark. Você acessou a área logada!"
  end

  it "Realizándo cadastro", :cadastro do
    within("#signup") do
      find("input[name=username]").set "João"
      find("input[name=password]").set "123!"
    end

    #Outra maneira de fazer
    # find("#signup input[name=username]")
    # find('#signup input[name=password]')

    click_link "Criar Conta"
    # resultado = find("#result").to have_content "Dados enviados. Aguarde aprovação do seu cadastro!"
    resultado = find("#result")
    expect(resultado).to have_content "Dados enviados. Aguarde aprovação do seu cadastro!"

    # page.save_screenshot("log/dados_cadastro_enviados")
  end
end
