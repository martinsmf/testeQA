# Ruby é uma linguágem considerada puramente orientada a objetos
# No Ruby tudo é objeto.

# Classe possui atributos e metodos
# características e ações

class Carro
  attr_accessor :nome

  def ligar
    puts "#{nome} está pronto para iniciar o trajeto"
  end
end

carro = Carro.new

puts "Qual carro deseja?"
carro.nome = gets.chomp

carro.ligar
