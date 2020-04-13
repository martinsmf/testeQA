describe "iFrames bom e ruim" do
  before(:each) do
    visit "https://training-wheels-protocol.herokuapp.com/"
  end

  describe "Bom", :nice_iframe do
    before(:each) do
      find('a[href="/nice_iframe"]').click
    end

    it "Adicionar ao carrinho", :refri do
      within_frame("#burgerId") do
        produto = find(".menu-item-info-box-content", text: "REFRIGERANTE")
        produto.find("a").click
        expect(find('#cart tr[style="opacity: 1;"]')).to have_content "R$ 4,50"
        sleep 5
      end
    end
  end

  describe "Ruim", :bad_ifram do
    before(:each) do
      click_link "iFrame Ruim"
    end

    it "Iframe sem ID carrinho deve estar vazio" do
      script = '$(".box-iframe").attr("id", "temp")'
      page.execute_script(script)

      within_frame("temp") do
        expect(find("#cart")).to have_content "Seu carrinho está vazio!"
      end
    end
  end
end
