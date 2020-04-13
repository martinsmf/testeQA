class AvengersHeadQuarter
  attr_accessor :list

  def initialize
    self.list = []
  end

  def put(avenger)
    puts self.list.class
    self.list.push(avenger)
  end
end

# TDD(Desenvolvimento guiado por teste)
describe AvengersHeadQuarter do
  it "deve adicionar um vigador" do
    hq = AvengersHeadQuarter.new

    hq.put("Spiderman")
    expect(hq.list).to include "Spiderman"
  end

  it "deve add uma lista de vingadores" do
    hq = AvengersHeadQuarter.new
    hq.put("Thor")
    hq.put("Hulk")
    hq.put("Spiderman")

    res = hq.list.size > 0

    expect(hq.list.size).to be > 0
    expect(res).to be true
  end

  it "Thor deve ser o primeiro da lista" do
    hq = AvengersHeadQuarter.new
    hq.put("Thor")
    hq.put("Hulk")
    hq.put("Spiderman")

    expect(hq.list).to start_with("Thor")
  end

  it "Ironman deve ser o último da lista" do
    hq = AvengersHeadQuarter.new
    hq.put("Thor")
    hq.put("Hulk")
    hq.put("Spiderman")
    hq.put("Ironman")

    expect(hq.list).to end_with("Ironman")
  end
  it "Deve conter nome" do
    avenger = "Matheus Fernandes Martins"

    expect(avenger).to match(/Fernandes/)
    expect(avenger).not_to match(/Gabriel/)
  end
end

# Verificações .to eql, .to include, .to be, .to start_with, .to end_with, .to match, .not_to match
