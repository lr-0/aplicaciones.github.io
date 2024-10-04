import 'dart:io';

void main() {
  print('Ingresa el número de términos de la secuencia de Fibonacci que deseas generar:');
  int? n = int.parse(stdin.readLineSync()!);

  if (n <= 0) {
    print('Por favor, ingresa un número mayor que 0.');
    return;
  }

  List<int> fibonacci = [];

  for (int i = 0; i < n; i++) {
    if (i == 0) {
      fibonacci.add(0); 
    } else if (i == 1) {
      fibonacci.add(1); 
    } else {
      
      int siguiente = fibonacci[i - 1] + fibonacci[i - 2];
      fibonacci.add(siguiente);
    }
  }

  print('La secuencia de Fibonacci con $n términos es:');
  print(fibonacci);
}
