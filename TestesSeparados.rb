lista = ["4", "31", "68", "40", "73", "28", "93", "56", "92", "77"]

print lista

salvar = lista[0]
lista[0] = lista[0+1]
lista[0+1] = salvar

print "\n#{lista}"