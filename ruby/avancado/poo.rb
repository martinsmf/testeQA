class Conta
  attr_accessor :nome, :saldo

  #construtor
  def initialize(nome)
    self.saldo = 0.0
    self.nome = nome
  end

  def deposita(valor)
    self.saldo += valor
    puts "Deposita a quantia de R$ #{valor} "
  end

  def exibiSaldo
    puts "#{self.nome}, seu saldo é de R$ #{self.saldo} "
  end
end

puts "Qual o seu nome?"
nome = gets.chomp
deposito = Conta.new(nome)

# deposito.nome = nome

puts "#{deposito.nome}, quanto deseja depositar"
valor = gets.chomp.to_f

deposito.deposita(valor)

puts "#{deposito.nome}, deseja realizar outro deposito?"
valor = gets.chomp.to_f
deposito.deposita(valor)

puts deposito.exibiSaldo
