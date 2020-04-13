class Conta
  attr_accessor :saldo, :menssagem

  def initialize(saldo)
    self.saldo = saldo
  end

  def saca(valor, max, taxa)
    if (valor > self.saldo && self.saldo > 0)
      self.menssagem = "Saldo insuficiente para sacar!"
    elsif (self.saldo == 0)
      self.menssagem = "Impossivel sacar saldo 0"
    elsif (valor > max)
      self.menssagem = "Limite maiximo por saque R$#{max}"
    else
      self.saldo -= valor + taxa
      self.menssagem = "Saque realizado com sucesso, sue saldo agora é #{self.saldo} "
    end
  end
end

class ContaCorrente < Conta
  def saca(valor, max = 700, taxa = 5.00)
    super
  end
end

class ContaPoupanca < Conta
  def saca(valor, max = 500, taxa = 2.00)
    super
  end
end
