import 'dart:io';

void main() {
  print('Ingresa un número entero:');
  String? input = stdin.readLineSync();

  if (input == null || input.isEmpty) {
    print('Por favor, ingresa un número válido.');
    return;
  }

  // Manejo del signo negativo
  bool esNegativo = input.startsWith('-');
  if (esNegativo) {
    input = input.substring(1); // Elimina el signo negativo para invertir
  }

  String numeroInvertido = '';
  int index = input.length - 1;

  while (index >= 0) {
    numeroInvertido += input[index]; // Agrega el dígito actual al resultado
    index--; // Decrementa el índice
  }

  // Agregar el signo negativo si es necesario
  if (esNegativo) {
    numeroInvertido = '-' + numeroInvertido;
  }

  print('El número original: $input');
  print('El número invertido: $numeroInvertido');
}
