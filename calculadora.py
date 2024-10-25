# Criar uma forma para identificar números e operadores validos

def operador_valido(operador):
  if operador == '+' or operador == '-' or operador == 'x' or operador == '/' or operador == '^':
    return True
  else:
    return False


# Criar um loop para pegar o input do usuario

while True:
  try:
    num1 = float(input('Digite o primeiro numero: '))
    break
  except ValueError:
    print('Digite um numero valido')

while True:
    operador = input('Digite um operador (+, -, x, /, ^): ')
    if operador_valido(operador) == False:
      print('Digite um operador valido')
    elif operador_valido(operador) == True:
      break

while True:
    try:
      num2 = float(input('Digite o segundo número: '))
      break
    except ValueError:
      print('Digite um numero valido')


# Exibir o resultado personalizado de acordo com o operador

if operador == '+':
  print('O resultado da soma é:', num1 + num2)
elif operador == '-':
  print('O resultado da subtração é:', num1 - num2)
elif operador == 'x':
  print('O resultado da multiplicação é:', num1 * num2)
elif operador == '/':
  print('O resultado da divisão é:', num1 / num2)
elif operador == '^':
  print('O resultado da potenciação é:', num1 ** num2)