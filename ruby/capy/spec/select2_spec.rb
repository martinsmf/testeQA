describe "Select2" do
  describe("single") do
    before(:each) do
      visit "https://training-wheels-protocol.herokuapp.com/apps/select2/single.html"
    end

    it "Seleciona ator por nome", :single do
      find(".select2-selection--single").click
      sleep 1
      find(".select2-results__option", text: "Jim Carrey").click
      sleep 5
    end

    it "Selecionando pela busca", :busca do
      find(".select2-selection--single").click

      find(".select2-search__field").set "Chris Rock"

      find(".select2-results__option").click

      selecao = find(".select2-selection--single .select2-selection__rendered")
      expect(selecao.text).to eql "Chris Rock"
      sleep 3
    end
  end

  describe("mutiple") do
    before(:each) do
      visit "/apps/select2/multi.html"
    end
  end
end
