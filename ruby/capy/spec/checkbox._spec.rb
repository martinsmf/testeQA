describe " caixa de seleção", :checkboxe do
  before(:each) do
    visit "https://training-wheels-protocol.herokuapp.com/checkboxes"
  end
  #Obs: check and uncheck, don't look for value
  it " marcando uma opição " do
    check("thor")
  end

  it "desmarcando uma opição", :formiga do
    uncheck("antman")
  end
  #Obs: find command, search for ID or value
  it "marcando com find set true" do
    find("input[value=cap]").set(true)
  end

  it "desmarcando com find set false" do
    find("input[value=guardians]").set(false)
  end

  after(:each) do
    sleep 3
  end
end
