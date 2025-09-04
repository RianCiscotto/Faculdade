'''Imprimir a tabuada do número 3 (3 x 1 = 1 - 3 x 10 = 30)'''

tabuada = 3
for i in range(11):
    result = tabuada * i
    i = i+i
    print(result)