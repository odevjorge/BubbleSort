# Minifunção para verificar item que tem a maior quantidade de digitos
def maiorDigito(lista)
  maiorDigito = "0"
  for c in lista
    if c.length > maiorDigito.length
      maiorDigito = c
    end
  end

  return maiorDigito.length
end

# Minifunção para colocar 0 a esquerda
def organizandoNum(numero)
  numero = numero.rjust(maiorDigito($lista), "0")

  return numero
end

# Organizando numeros para terem a memsa quantidade de digitos
def listaReestruturada(lista)
  print ">>", lista
  for i in 0..lista.length - 1
    if lista[i].length < maiorDigito($lista)
      lista[i] = organizandoNum(lista[i])
    end
  end

  return lista
end

# Saida organizada e "responsiva" kk
def saidaMunita(lista, verificando)
  print "\e[2J\e[f"

  print "Verificando:\n"
  for c in lista
    print c, " "
  end
  print "\n#{((" " * maiorDigito($lista)) + " ") * verificando}#{(("-" * maiorDigito($lista)) * 2) + ("-" * 1)}"

  print "\n\nEstado: \n"

  unless lista[verificando] > lista[verificando + 1] # Mesma verificação do bubblecore, apenas para printar se tem modificações antes de ser modificado
    print ">> Ok\n"
  else
    print "De:   #{lista[verificando]} | #{lista[verificando + 1]}\n"
    print "Para: #{lista[verificando + 1]} | #{lista[verificando]}"
  end

  print "\n\nPrecione qualquer tecla para continuar.."
  pause = gets
end

# É o core, o "nucleo" principal do programa
def bubblecore()
  lista = listaReestruturada($lista)
  trocas = 0

  # Loop com a condição que SE NÃO TIVER MAS TROCAS ELE SAIR DO LOOP
  loop do
    trocas = 0
    for c in 0..lista.length - 2
      numAtual = lista[c]
      numProximo = lista[c + 1]

      saidaMunita(lista, c) # Chamando a a função para fazer o print

      # Verificando se um numero é maior que o outro e fazendo a troca
      if numAtual > numProximo
        print " Fazendo uma troca\n"
        numSalvo = numAtual
        lista[c] = numProximo
        lista[c + 1] = numSalvo

        trocas += 1 # Variavel usada para saber se tiveram trocas
      end
    end

    # IF que faz quebra o loop se não tiver mas trocas
    if trocas == 0
      print "\e[2J\e[f"
      print "A lista de numeros foi organizada\n"
      for i in lista
        print "#{i} "
      end
      break
    end
  end
end


def main()
  print "Digite 1 para numeros automaticos ou 2 para entrada manual [1/2]: "
  entrada = gets.chomp.to_i
  if entrada == 1
    $lista = ["4", "31", "8", "40", "73", "28", "93", "56", "97", "77"]
    bubblecore()
  elsif entrada == 2
    print "Digite a lista de numeros:\n>>> "
    $lista = gets.chomp.strip.split(" ")
    bubblecore()
  else
    print "Entrada incorreta digite novamente: "
    main()
  end
end

main()