"""1.Leia a idade do usuário e classifique-o em:
- Criança – 0 a 12 anos
- Adolescente – 13 a 17 anos
- Adulto – acima de 18 anos
- Se o usuário digitar um número negativo, mostrar a mensagem que a idade é inválida"""

idade = int(input('Digite sua idade'))

if idade >= 0 and idade <= 12:
    print('É criança!')
elif idade >= 13 and idade<= 17:
    print('É adolescente!')
elif idade >= 18:
    print('É adulto!')
else:
    print('Idade inválida, digite um número inteiro!')
