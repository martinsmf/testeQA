describe "Campo de login dimânico" do
  before(:each) do
    visit "https://training-wheels-protocol.herokuapp.com"

    click_link "Login com campo randômico"
    #or find('a[href="/login2"]').click
    @imputDinamico = find("#login")
  end

  it "login com data de nascimento" do
    fill_in "userId", with: "stark"
    find("#passId").set "jarvis!"

    # imputDinamico = find("#login")
    case @imputDinamico.text
    when /Dia/
      find("#day").set "29"
    when /Mês/
      find("#month").set "05"
    when /Ano/
      find("#year").set "1970"
    end

    click_button "Login"
    expect(find("#flash")).to have_content "Olá, Tony Stark. Você acessou a área logada!"
  end

  it "Quando isere senha icorreta", :senha do
    find("#userId").set "stark"
    fill_in "passId", with: "b"

    case @imputDinamico.text
    when /Dia/
      find("#day").set "29"
    when /Mês/
      find("#month").set "05"
    when /Ano/
      find("#year").set "1970"
    end

    click_button "Login"
    expect(find("#flash-messages .flash")).to have_content "Senha é invalida!"
  end

  it "Quando o ussuario não esta cadastrado", :senha do
    find("#userId").set "Gabriellen"
    sleep 3
    fill_in "passId", with: "b"

    case @imputDinamico.text
    when /Dia/
      find("#day").set "29"
    when /Mês/
      find("#month").set "05"
    when /Ano/
      find("#year").set "1970"
    end

    click_button "Login"
    expect(find("#flash-messages .flash")).to have_content "O usuário informado não está cadastrado!"
  end
end
