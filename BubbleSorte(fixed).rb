# Função para pegar do usuario ou automaticamente uma lista de numeros
def listaNumeros(tipo)
  if tipo.upcase == "AUTO"
    lista = ["4", "31", "8", "40", "73", "28", "93", "56", "97", "77"]
  else
    print "Digite a lista de numeros: " #   4	 31	 68	 40	 73	 28	 93	 56	 92	 77
    lista = gets.chomp.strip.split(" ")
  end

  return lista
end

# Minifunção para verificar item que tem a maior quantidade de digitos
def maiorDigito()
  lista = listaNumeros("auto")
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
  numero = numero.rjust(maiorDigito(), "0")

  return numero
end

# Organizando numeros para terem a memsa quantidade de digitos
def listaReestruturada()
  lista = listaNumeros("auto")
  for i in 0..lista.length - 1
    if lista[i].length < maiorDigito
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
  print "\n#{(" " * 3) * verificando}#{"-----"}"

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
  lista = listaReestruturada()
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
      break
    end
  end
end

# chamando o bubblecore
bubblecore()
