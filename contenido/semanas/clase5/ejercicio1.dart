import 'dart:io';

bool esPrimo(int numero) {
  if (numero <= 1) return false;
  for (int i = 2; i <= numero ~/ 2; i++) {
    if (numero % i == 0) {
      return false;
    }
  }
  return true;
}

void main() {
  print('Ingresa el primer número:');
  int? inicio = int.parse(stdin.readLineSync()!);

  print('Ingresa el segundo número:');
  int? fin = int.parse(stdin.readLineSync()!);

  if (inicio > fin) {
    print('El primer número debe ser menor o igual que el segundo número.');
    return;
  }

  int sumaPrimos = 0;

  for (int i = inicio; i <= fin; i++) {
    if (esPrimo(i)) {
      sumaPrimos += i;
    }
  }

  print('La sumatoria de los números primos entre $inicio y $fin es: $sumaPrimos');
}
