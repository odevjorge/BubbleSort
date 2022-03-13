lista = ["4", "31", "8", "40", "73", "28", "93", "56", "97", "77"]

menorNum = "1"
i = 0

while i != lista.length
  if lista[i].length > menorNum.to_s.length
    menorNum = lista[i]

  end
  i += 1

end

qntMaior = menorNum.length

i = 0
while i != lista.length
  if lista[i].length < qntMaior
    lista[i] = lista[i].to_s.rjust(qntMaior.to_i, "0")

  end
  i += 1

end

marcador = "#{("-" * 4) + ("-" * qntMaior)}" * 2

c = 0
quantasTrocas = 0

loop do
  c = 0
  quantasTrocas = 0
  while c != lista.length - 1
    numPrimario = lista[c].to_i
    numSecundario = lista[c + 1].to_i

    print "Verificando:\n", lista, "\n"
    print " ", "#{(" " * 4) + (" " * qntMaior)}" * c, marcador, "\n"

    if numPrimario > numSecundario
      print "\n - Troca: #{numPrimario} | #{numSecundario}\n - Para: #{numSecundario} | #{numPrimario}\n"
      numSalvo = numPrimario
      lista[c] = numSecundario.to_s.rjust(qntMaior.to_i, "0")
      lista[c + 1] = numSalvo.to_s.rjust(qntMaior.to_i, "0")
      quantasTrocas += 1

    else
      print "\n - Ok\n\n"

    end

    print "\nPrecione qualquer tecla para continuar.."
    pause = gets
    print "\e[2J\e[f"
    c += 1
  end

  if c == lista.length - 1 && quantasTrocas == 0
    break

  end
end

puts "\nFinal:"
print lista, "\n\n"
