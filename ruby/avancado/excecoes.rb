# begin
#   # Devo tentar alguma coisa
#   file = File.open ("./ola")
#   if file
#     puts file.read
#   end
# rescue Exception => e
#   # Obter um possível erro
#   puts e.message, e.backtrace
# end

def soma(n1, n2)
  n1 + n2
rescue Exception => e
  puts "Erro ao excutar soma"
end

soma("10", 5)
