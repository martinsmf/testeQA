describe "Nova janela" do
  before(:each) do
    visit "https://training-wheels-protocol.herokuapp.com/"

    find('a[href="/windows"]').click
  end

  it "abrindo uma nova janela", :wnd do
    novaJanela = window_opened_by { click_link "Clique aqui" }

    within_window -> { page.title == "Nova Janela" } do
      expect(page).to have_content 'Aqui temos uma nova janela \o/'
      #   expect(find(".example h3")).to have_content 'Aqui temos uma nova janela \o/'
    end

    novaJanela.close
    expect(novaJanela.closed?).to be true
  end
end
