#!/bin/bash

#Código: Smart Caclculadora: Operações Básicas

#Introdução ao código

echo "SMART CALCULADORA: OPERAÇÕES BÁSICAS"
echo
echo "Por favor, insira o seu nome:"
read nome
echo
echo "Olá, $nome! Seja bem-vindo(a) à Smart Calculadora: operações básicas."
echo "Ao inserir dois números quaisquer, você já obtém os resultados da soma, da subtração, da multiplicação e da divisão desses números."
echo "Vamos lá?!"
echo
echo "LEMBRETE: Caso queira utilizar números decimais, por favor, utilize ponto (não vírgula!)."

#Recebendo valores do usuário

echo
echo "Insira um número:"
read num1
echo "O primeiro número escolhido foi: $num1"
echo "Agora, insira mais um número:"
read num2
echo "O segundo número escolhido foi: $num2"
echo
echo "Os números escolhidos foram $num1 e $num2."

#Verificando qual número é o maior ou se ambos são iguais

echo
echo "VERIFICAÇÃO: Qual é o maior número?"
if [ $num1>$num2 ]; then
	echo "O primeiro número escolhido é o maior: $num1 > $num2."
elif [ $num1<$num2 ]; then
	echo "O segundo número escolhido é o maior: $num2 > $num1."
else
	echo "Os dois números escolhidos são iguais: $num1 = $num2."
fi

#Possibilidades de soma
echo
echo "-----SOMA-----"
echo
echo "RESULTADOS"
soma1=$(echo "scale=4; ($num1)+($num2)" | bc)
echo "Resultado da soma do primeiro número com o segundo número: $num1 + $num2 = $soma1"
soma2=$(echo "scale=4; ($num2)+($num1)" | bc)
echo "Resultado da soma do segundo número com o primeiro número: $num2 + $num1 = $soma2"
echo
if [ $num1 = $num2 ]; then
	echo "Números iguais. Mas, no geral, no caso de somas, a ordem dos fatores NÃO altera o resultado!"
else
	echo "No caso de somas, a ordem dos fatores NÃO altera o resultado!"
fi

#Possibilidades de subtração
echo
echo "-----SUBTRAÇÃO-----"
echo
echo "RESULTADOS"
subtracao1=$(echo "scale=4; ($num1)-($num2)" | bc)
echo "Resultado do segundo número subtraído do primeiro número: $num1 - $num2 = $subtracao1"
subtracao2=$(echo "scale=4; ($num2)-($num1)" | bc)
echo "Resultado do primeiro número subtraído do segundo número: $num2 - $num1 = $subtracao2"
echo
if [ $num1 = $num2 ]; then
	echo "Número iguais. Mas, no geral, no caso de subtrações, a ordem dos fatores altera o resultado!"
else
	echo "No caso de subtrações, a ordem dos fatores altera o resultado!"
fi

#Possibilidades de multiplicação

echo
echo "-----MULTIPLICAÇÃO-----"
echo
echo "RESULTADOS"
multiplicacao1=$(echo "scale=4; ($num1)*($num2)" | bc)
echo "Resultado da multiplicação do primeiro número pelo segundo número: $num1 * $num2 = $multiplicacao1"
multiplicacao2=$(echo "scale=4; ($num2)*($num1)" | bc)
echo "Resultado da multiplicação do segundo número pelo primeiro número: $num2 * $num1 = $multiplicacao2"
echo
if [ $num1 = $num2 ]; then
	echo "Números iguais. Mas, no geral, no caso de multiplicações, a ordem dos fatores NÃO altera o resultado!"
else
	echo "No caso das multiplicações, a ordem dos fatores NÃO altera o resultado!"
fi

#Possibilidades de divisão

echo
echo "-----DIVISÃO-----"
echo
echo "RESULTADOS"
if (( $(echo "$num2 == 0" | bc) )); then
	echo "Resultado da divisão do primeiro número pelo segundo número: ERRO."
	echo "ERRO: Divisão por zero ($num1 / $num2) não é permitida."
else
	divisao1=$(echo "scale=4; ($num1)/($num2)" | bc)
	echo "Resultado da divisão do primeiro número pelo segundo número: $num1 / $num2 = $divisao1"
fi
if (( $(echo "$num1 == 0" | bc) )); then
	echo "Resultado da divisão do segundo número pelo primeiro número: ERRO."
	echo "ERRO: Divisão por zero ($num2 / $num1) não é permitida."
else
	divisao2=$(echo "scale=4; ($num2)/($num1)" | bc)
	echo "Resultado da divisão do segundo número pelo primeiro número: $num2 / $num1 = $divisao2"
fi
echo
if [ $num1 = $num2 ]; then
	echo "Números iguais. Mas, no geral, no caso de divisões, a ordem dos fatores altera o resultado!"
else
	echo "No caso de divisões, a ordem dos fatores altera o resultado!"
fi

echo
echo "-----FIM-----"
