#Código: Calculadora (números inteiros de 0 a 9)

#Introdução ao código

nome = input("Por favor, insira o seu nome: ", ) #Receber o valor nome do usuário na variável 'nome'
print("Olá,",nome,"! Seja bem-vindo(a) ao notebook que contém o código do exercício do Módulo 1. Vamos lá?!")

#Criar lista

lista = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9] #Criar uma lista com os únicos números possíveis aceitos pelo código

#Receber valores do usuário e convertê-los para o tipo 'inteiro'

num_1 = int(input("Insira um número de 0 a 9: ", )) #Receber o primeiro número escolhido pelo usuário e coverter esse valor para o tipo 'inteiro'
if num_1 in lista:                                  #Condição para que o primeiro número escolhido faça parte da lista criada
  print("O primeiro número escolhido foi: ", num_1) #Comando referente à condição anteriormente estabelecida
else:                                               #Caso a condição antetior não seja verdadeira, seguir da seguinte forma
  while num_1 not in lista:                         #Criar laço de repetição para toda vez que o usuário fornecer um número que não faça parte da lista criada
    num_1 = int(input("Número inválido. Por favor, insira um número de 0 a 9: ", )) #Receber outro número do usuário e coverter esse valor para o tipo 'inteiro'
  print("O primeiro número escolhido foi: ", num_1)                                 #Comando referente à condição anteriormente estabelecida (laço de repetição)

num_2 = int(input("Agora, insira mais um número de 0 a 9: ", )) #Receber o segundo número escolhido pelo usuário e coverter esse valor para o tipo 'inteiro'
if num_2 in lista:                                              #Condição para que o segundo número escolhido faça parte da lista criada
  print("O segundo número escolhido foi: ", num_2)              #Comando referente à condição anteriormente estabelecida
else:                                                           #Caso a condição antetior não seja verdadeira, seguir da seguinte forma
  while num_2 not in lista:                                     #Criar laço de repetição para toda vez que o usuário fornecer um número que não faça parte da lista criada
    num_2 = int(input("Número inválido. Por favor, insira um número de 0 a 9: ", )) #Receber outro número do usuário e coverter esse valor para o tipo 'inteiro'
  print("O segundo número escolhido foi: ", num_2)                                  #Comando referente à condição anteriormente estabelecida (laço de repetição)

print("Os números escolhidos foram", num_1, "e", num_2, ".")                        #Informar ao usuário os dois números escolhidos.

#Conferir se os números escolhidos são pares ou ímpares

if (num_1%2) == False:                          #Condição: se o primeiro número for divido por 2 e obter resto 0
  print("O primeiro número escolhido é par.")
else:                                           #Caso a condição acima não seja verdadeira, ou seja, o resto da divisão for diferente de 0
  print("O primeiro número escolhido é ímpar.")

if (num_2%2) == False:                          #Condição: se o segundo número for divido por 2 e obter resto 0
  print("O segundo número escolhido é par.")
else:                                           #Caso a condição acima não seja verdadeira, ou seja, o resto da divisão for diferente de 0
  print("O segundo número escolhido é ímpar.")

#Conferir qual número é maior, qual é menor ou se os dois números são iguais

if(num_1>num_2):                                      #Condição 1: se o primeiro número for maior que o segundo
    print("O primeiro número escolhido é o maior.")
elif(num_1<num_2):                                    #Se a condição 1 não for verdadeira, conferir a condição 2: se o primeiro número for menor que o segundo
    print("O segundo número escolhido é o maior.")
else:                                                 #Caso nenhuma das condições acima for verdadeira
    print("Os dois números escolhidos são iguais.")

#Possibilidades de soma

soma1 = num_1 + num_2 #Criando a variável 'soma1'
print("Resultado da soma do primeiro número com o segundo número: ", soma1)

soma2 = num_2 + num_1 #Criando a variável 'soma2'
print("Resultado da soma do segundo número com o primeiro número: ", soma2)

if num_1 == num_2: #Condição para conferir se os números são iguais ou diferentes e para informar se a ordem dos fatores altera o resultado ou não
  print("Números iguais. Mas, no geral, no caso de somas, a ordem dos fatores não altera o resultado!")
else:
  print("No caso de somas, a ordem dos fatores não altera o resultado!")

#Possibilidades de subtração

subtracao1 = num_1 - num_2 #Criando a variável 'subtracao1'
print("Resultado do segundo número subtraído do primeiro número:", subtracao1)

subtracao2 = num_2 - num_1 #Criando a variável 'subtracao2'
print("Resultado do primeiro número subtraído do segundo número:", subtracao2)

if num_1 == num_2: #Condição para conferir se os números são iguais ou diferentes e para informar se a ordem dos fatores altera o resultado ou não
  print("Números iguais. Mas, no geral, no caso de subtrações, a ordem dos fatores altera o resultado!")
else:
  print("No caso de subtrações, a ordem dos fatores altera o resultado!")

#Possibilidades de multiplicação

multiplicacao1 = num_1 * num_2 #Criando a variável 'multiplicacao1'
print("Resultado da multiplicação do primeiro número pelo segundo número: ", multiplicacao1)

multiplicacao2 = num_2 * num_1 #Criando a variável 'multiplicacao2'
print("Resultado da multiplicação do segundo número pelo primeiro número: ", multiplicacao2)

if num_1 == num_2: #Condição para conferir se os números são iguais ou diferentes e para informar se a ordem dos fatores altera o resultado ou não
  print("Números iguais. Mas, no geral, no caso de multiplicações, a ordem dos fatores não altera o resultado!")
else:
  print("No caso de multiplicações, a ordem dos fatores não altera o resultado!")

#Possibilidades de divisão

if num_2 == 0: #Como não é possível dividir por 0, criar uma condição para verificar se o denominador é diferente de 0
  print("Resultado da divisão do primeiro número pelo segundo número: não é possível dividir um número por zero.")
else:
  divisao1 = num_1/num_2 #Criando a variável 'divisao1'
  print("Resultado da divisão do primeiro número pelo segundo número: ", divisao1)

if num_1 == 0: #Como não é possível dividir por 0, criar uma condição para verificar se o denominador é diferente de 0
  print("Resultado da divisão do segundo número pelo primeiro número: não é possível dividir um número por zero.")
else:
  divisao2 = num_2/num_1 #Criando a variável 'divisao2'
  print("Resultado da divisão do segundo número pelo primeiro número: ", divisao2)

if num_1 == num_2: #Condição para conferir se os números são iguais ou diferentes e para informar se a ordem dos fatores altera o resultado ou não
  print("Números iguais. Mas, no geral, no caso de divisões, a ordem dos fatores altera o resultado!")
else:
  print("No caso de divisões, a ordem dos fatores altera o resultado!")
