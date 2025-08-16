#!/bin/bash

#Script EBAC Módulo 2: Atividade Prática 

echo "Por favor, insira o seu nome:"
read nome

echo

echo "Olá, $nome, seja bem-vindo(a)!"
echo "Esta é uma calculadora interativa que realiaza as 4 operações básicas da matemática (adição, subtração, multiplicação e divisão) com 2 números reais no intervalo de 0 a 9."

echo

while true; do
	read -p "Por favor, insira um número inteiro entre 0 e 9: " num1
	if [[ "$num1" =~ ^[0-9]$ ]]; then
	echo "O primeiro número escolhido foi: $num1."
	break
else
	echo "Número inválido. Tente novamente."
fi
done

echo

while true; do
	read -p "Agora, insira mais um número inteiro entre 0 a 9: " num2
	if [[ "$num2" =~ ^[0-9]$ ]]; then
	echo "O segundo número escolhido foi: $num2."
	break
else
	echo "Número inválido. Tente novamente."
fi
done

#Conferir qual número é o maior número ou se ambos são iguais

echo
echo "-----RESULTADOS-----"
echo

#Conferir se os números são pares ou ímpares
echo "-----CONFERINDO SE OS NÚMEROS ESCOLHIDOS SÃO PARES OU ÍMPARES-----"
if ((num1 % 2 == 0)); then
	echo "O número $num1 é um número par."
else
	echo "O número $num1 é um número ímpar."
fi
if ((num2 % 2 == 0)); then
	echo "O número $num2 é um número par."
else
	echo "O número $num2 é um número ímpar."
fi

echo

#Conferir qual é o maior número ou se os dois números escolhidos são iguais
echo "-----CONFERINDO QUAL NÚMERO É MAIOR OU SE AMBOS SÃO IGUAIS-----"
if ((num1 > num2)); then
	echo "O primeiro número escolhio é maior que o segundo: $num1 > $num2."
elif ((num1 < num2)); then
	echo "O primeiro número escolhido é menor que o segundo: $num1 < $num2."
else
	echo "Os dois números escolhidos são iguais: $num1 = $num2."
fi

echo

#Resultados das operações matemáticas
echo "-----SOMA-----"
soma1=`echo "$num1 + $num2" | bc`
echo "O resultado da soma do primeiro número com o segundo é $soma1."
soma2=`echo "$num2 + $num1" | bc`
echo "O resultado da soma do segundo número com o primeiro é $soma2."
echo "No caso da soma, a ordem dos fatores NÃO altera o resultado!"

echo

echo "-----SUBTRAÇÃO-----"
subtracao1=`echo "$num1-$num2" | bc`
echo "O resultado do segundo número subtraído do primeiro é $subtracao1."
subtracao2=`echo "$num2-$num1" | bc`
echo "O resultado do primeiro número subtraído do segundo é $subtracao2."
echo "No caso da subtração, caso os números não sejam iguais, a ordem dos fatores altera o resultado!"

echo

echo "-----MULTIPLICAÇÃO-----"
multiplicacao1=`echo "$num1*$num2" | bc`
echo "O resultado da multiplicação do primeiro número pelo segundo é $multiplicacao1."
multiplicacao2=`echo "$num2*$num1" | bc`
echo "O resultado da multiplicação do segundo número pelo primeito é $multiplicacao2."
echo "No caso da multiplicação, a ordem dos fatores NÃO altera o resultado!"

echo

echo "-----DIVISÃO-----"
if [[ "$num2" -ne 0 ]]; then
	divisao1=`echo "scale=2; $num1/$num2" | bc`
	echo "O resultado da divisão do primeiro número pelo segundo é $divisao1."
else
	echo "Erro: O resultado da divisão do primeiro número pelo segundo não é possível pois divisão por zero não é permitida."
fi

if [[ "$num1" -ne 0 ]]; then
	divisao2=`echo "scale=2; $num2/$num1" | bc`
	echo "O resultado da divisão do segundo número pelo primeiro é $divisao2."
else
	echo "Erro: O resultado da divisão do segundo número pelo primeiro não é possível pois divisão por zero não é permitida."
fi
echo "No caso da divisão, caso os números não sejam iguais, a ordem dos fatores altera o resultado!"
echo

echo "-----FIM-----"
