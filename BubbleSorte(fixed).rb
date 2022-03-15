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

    for c in lista do
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
    for i in 0..lista.length - 1 do
        if lista[i].length < maiorDigito
            lista[i] = organizandoNum(lista[i])
        end

    end
    
    return lista
end

def saidaMunita(lista, verificando)
    print "\e[2J\e[f"

    print "Verificando:\n"
    for c in lista
        print c, " "
    end
    print "\n#{(" " * 3) * verificando}#{"-----"}"

    print "\n\nEstado: \n"

    unless lista[verificando] > lista[verificando + 1]
        print ">> Ok\n"
    else
        print "De:   #{lista[verificando]} | #{lista[verificando + 1]}\n"
        print "Para: #{lista[verificando + 1]} | #{lista[verificando]}"
    end

    print "\n\nPrecione qualquer tecla para continuar.."
    pause = gets
end

def bubblecore()
    lista = listaReestruturada()
    trocas = 0

    loop do
        trocas = 0
        estado = "0"
        for c in 0..lista.length - 2 do
            numAtual = lista[c]
            numProximo = lista[c + 1]

            saidaMunita(lista, c)

            if numAtual > numProximo
                print " Fazendo uma troca\n"
                numSalvo = numAtual
                lista[c] = numProximo
                lista[c + 1] = numSalvo
                
                trocas += 1
            else
            end
        end

        if trocas == 0
            break
        end
    end
end

bubblecore()