# print "Digite uma sequencia de numeros: " 
# lista = gets.chomp.strip.split(" ") #   4	 31	 68	 40	 73	 28	 93	 56	 92	 77
lista = ["4", "31", "68", "40", "73", "28", "93", "56", "92", "77"]
ListaSalva = lista
print lista

i = 0
c = 0

while i != 1
    while c != lista.length - 1
        print "\n Verificações: #{lista[c]} - #{lista[c+1]}"
        if lista[c] < lista[c+1]
            print "\nTroca: #{lista[c]} > #{lista[c+1]}"
            SalvaNumero = lista[c]
            lista[c] = 

            print "\n >> Nova ordem: "
        end

        c += 1
    end
    i += 1
end
