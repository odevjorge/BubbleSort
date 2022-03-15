# print "Digite uma sequencia de numeros: "
# lista = gets.chomp.strip.split(" ") #   4	 31	 68	 40	 73	 28	 93	 56	 92	 77
lista = ["4", "31", "68", "40", "73", "28", "93", "56", "92", "77"]
print lista, "\n"

c = 0
quantasTrocas = 0

loop do
  c = 0
  quantasTrocas = 0
  while c != lista.length - 1
    numPrimario = lista[c].to_i
    numSecundario = lista[c + 1].to_i

    print "\nVericando os numeros: #{numPrimario} e #{numSecundario}"
    if numPrimario > numSecundario
      print "\n - Troca: #{numPrimario} | #{numSecundario}\n - Para: #{numSecundario} | #{numPrimario}\n"
      numSalvo = numPrimario
      lista[c] = numSecundario.to_s
      lista[c + 1] = numSalvo.to_s
      quantasTrocas += 1

    else
      print "\n - Ok\n"

    end

    print "\nPressione Qualquer tenta para continuar.."
    pause = gets
    c += 1
  end

  if c == lista.length - 1 && quantasTrocas == 0
    break
  end
end

puts "\nFinal:"
print lista