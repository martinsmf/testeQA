def diaga_ola
  puts "Olá!"
end

diaga_ola

def retorna_nome(nome)
  puts "Olá " + nome + "!"
end

def soma(valor1, valor2)
  resultado = valor1 + valor2
  puts "O sesultado é:" + resultado
end

puts "Escreva seu nome"
nome = gets.chomp

retorna_nome(nome)

puts "Digite o número 1:"
numero1 = gets.chomp.to_i

puts "Digite o número 2:"
numero2 = gets.chomp.to_i

soma(numero1, numero2)
