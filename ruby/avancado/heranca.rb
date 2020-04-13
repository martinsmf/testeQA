class Veiculo
  attr_accessor :nome, :marca, :modelo

  def initialize(nome, marca, modelo)
    self.nome = nome
    self.marca = marca
    self.modelo = modelo
  end

  def ligar
    puts "O #{nome} #{marca} #{modelo}, está pronto para ligar!"
  end

  def buzinar
    puts "Beep! Beep!"
  end
end

class Carro < Veiculo
  def dirigir
    puts "#{nome} iniciando o trajeto"
  end
end

class Moto < Veiculo
  def pilotar
    puts "#{nome} iniciando o trajeto"
  end
end

puts "Que carro você tem?"
nome = gets.chomp

puts "Qual é a marca?"
marca = gets.chomp

puts "Qual é o modelo"
modelo = gets.chomp

civic = Carro.new(nome, marca, modelo)

puts civic.ligar
puts civic.buzinar
puts civic.dirigir

puts "Que moto você tem?"
nome = gets.chomp

puts "Qual é a marca?"
marca = gets.chomp

puts "Qual é o modelo"
modelo = gets.chomp

moto = Moto.new(nome, marca, modelo)
puts moto.ligar
puts moto.buzinar
puts moto.pilotar
