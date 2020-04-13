describe "Alertas de Js" do
  before(:each) do
    visit "https://training-wheels-protocol.herokuapp.com/"

    find('a[href="/javascript_alerts"]').click

    expect(find("#content .example h3")).to have_content "JavaScript Alerts"
  end
  it "Testando alert", :alerta do
    click_button "Alert"

    mensage = page.driver.browser.switch_to.alert.text
    expect(mensage).to have_content "Isto é uma mensagem de alerta"
  end

  it "Testando confirmação", :confirma do
    #Valida confirmação
    find(".btn-primary").click
    mensagem = page.driver.browser.switch_to.alert.text
    expect(mensagem).to eql "E ai confirma?"

    page.driver.browser.switch_to.alert.accept
    validaConfirmacao = find("#result")
    expect(validaConfirmacao).to have_content "Mensagem confirmada"
  end

  it "Testando não confirmação", :naoConfirma do
    find(".btn-primary").click
    mensagem = page.driver.browser.switch_to.alert.text
    expect(mensagem).to eql "E ai confirma?"

    page.driver.browser.switch_to.alert.dismiss
    validaNaoConfirmacao = find("#result")
    expect(validaNaoConfirmacao).to have_content "Mensagem não confirmada"
    #expect(page).to have_content 'a mensagem' outra forma de confirmar a mensagem que esta na pagina
  end

  it "Teste prompt", :inserirNome do
    accept_prompt(with: "Gabriellen") do
      click_button "Prompt"
      sleep 2
    end

    validaNome = find("#result")
    expect(validaNome).to have_content "Olá, Gabriellen"
  end

  it "dismiss prompt", :tbmFunfa do
    click_button "Prompt"

    page.drive.brwser.switch_to.alert.dismiss #_prompt
    validaNome = find("#result")
    expect(validaNome).to have_content "Olá, null"
  end

  it "dismiss_prompt", :dismiss do
    click_button "Prompt"
    dismiss_prompt() #do end
    validaNome = find("#result")
    expect(validaNome).to have_content "Olá, null"
  end
end
