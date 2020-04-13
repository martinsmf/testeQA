require_relative "../../app/bank"

describe ContaCorrente do
  describe "saque" do
    context "quando o valor e positivo" do
      before(:all) do
        @cc = ContaCorrente.new(1000.00)
        @cc.saca(200.00)
      end
      it "entao atualiza saldo" do
        expect(@cc.saldo).to eql 795.00
      end
    end
    context "quando o saldo é insuficiente" do
      before(:all) do
        @cc = ContaCorrente.new(1000.00)
        @cc.saca(2000.00)
      end
      it "então exibe mensagem" do
        expect(@cc.menssagem).to eql "Saldo insuficiente para sacar!"
      end
      it "o saldo tem que permanecer o mesmo" do
        expect(@cc.saldo).to eql 1000.00
      end
    end
    context "quando o saldo é 0" do
      before(:all) do
        @cc = ContaCorrente.new(0.00)
        @cc.saca(2000.00)
      end
      it "então exibe mensagem" do
        expect(@cc.menssagem).to eql "Impossivel sacar saldo 0"
      end
      it "e o saldo permanece" do
        expect(@cc.saldo).to eql 0.00
      end
    end
    context "quando supera limete de saque" do
      before(:all) do
        @cc = ContaCorrente.new(1000.00)
        @cc.saca(701.00)
      end
      it "então exibe mensagem" do
        expect(@cc.menssagem).to eql "Limite maiximo por saque R$700"
      end
    end
  end
end
