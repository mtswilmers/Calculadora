#!/bin/bash

# Criar uma forma para identificar números e operadores validos
function numero_valido() {
	[[ "$1" =~ ^-?[0-9]+([.][0-9]+)?$ ]]
}

function operador_valido() {
	[[ "$1" == "+" || "$1" == "-" || "$1" == "x" || "$1" == "/" || "$1" == "^" ]]
}

# Ler inputs do usuario e verificar se eles são validos
while true; do
	read -p "Insira o primeiro número: " num1
	if numero_valido "$num1"; then
		break
	else
		echo "Erro: '$num1' não é um número válido"
	fi
done

while true; do
	read -p "insira o operador (utilize +, -, /, x, ^): " operador
	if operador_valido "$operador"; then
		break
	else
		echo "Erro: '$operador' não é um operador válido"
	fi
done

while true; do
	read -p "insira o segundo número: " num2
	if numero_valido "$num2"; then
		break
	else
		echo "Erro: '$num2' não é um número válido"
	fi
done

# Realizar o calculo de acordo com o operador selecionado
if [ "$operador" == "+" ]; then
	resultado=$(echo "$num1 + $num2" | bc -l)

elif [ "$operador" == "-" ]; then
	resultado=$(echo "$num1 - $num2" | bc -l)

elif [ "$operador" == "x" ]; then
	resultado=$(echo "$num1 * $num2" | bc -l)

elif [ "$operador" == "/" ]; then
	resultado=$(echo "scale=2; $num1 / $num2" | bc -l)

elif [ "$operador" == "^" ]; then
	resultado=$(echo "scale=2; $num1 ** num2" | bc -l)
fi

# Exibir o resultado
echo "Resultado: $resultado"
