tempo_gasto = float(input('Digite o tempo em minutos gastos na viagem'))
velocidade_media = float(input('Digite a velocidade média da viagem'))

Distancia = tempo_gasto * velocidade_media
print(Distancia)

litros_usados = Distancia / 12
print(litros_usados)

print('Velocidade média: ', velocidade_media)
print('Tempo Gasto na viagem: ', tempo_gasto)
print('Distância percorrida', Distancia)
print('Quantidade de litros utilizado: ', litros_usados) 