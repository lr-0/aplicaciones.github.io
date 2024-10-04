import 'dart:io';
import 'dart:math';

void main() {
  print('Ingresa un número entero:');
  int? numero = int.parse(stdin.readLineSync()!);

  // Convertir el número a una cadena para contar los dígitos
  String numeroStr = numero.toString();
  int cantidadDigitos = numeroStr.length;
  int suma = 0;

  // Calcular la suma de los dígitos elevados a la potencia correspondiente
  for (int i = 0; i < cantidadDigitos; i++) {
    int digito = int.parse(numeroStr[i]);
    suma += pow(digito, cantidadDigitos).toInt(); // Elevar el dígito a la potencia
  }

  // Verificar si el número es un número de Armstrong
  if (suma == numero) {
    print('$numero es un número de Armstrong.');
  } else {
    print('$numero no es un número de Armstrong.');
  }
}
