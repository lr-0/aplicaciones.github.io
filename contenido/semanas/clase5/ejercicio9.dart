import 'dart:io';

void main() {
  print('Ingresa la base:');
  int base = int.parse(stdin.readLineSync()!);

  print('Ingresa el exponente:');
  int exponente = int.parse(stdin.readLineSync()!);

  // Inicializar el resultado
  int resultado = 1;

  // Calcular la potencia usando multiplicación repetida
  for (int i = 0; i < exponente; i++) {
    resultado *= base; // Multiplicar repetidamente
  }

  print('$base elevado a la $exponente es: $resultado');
}
