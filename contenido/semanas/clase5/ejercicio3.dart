import 'dart:io';

BigInt factorial(int n) {
  BigInt resultado = BigInt.from(1); 
  for (int i = 2; i <= n; i++) {
    resultado *= BigInt.from(i); 
  }

  return resultado;
}

void main() {
  print('Ingresa un número para calcular su factorial:');
  int? n = int.parse(stdin.readLineSync()!);

  if (n < 0) {
    print('El factorial no está definido para números negativos.');
    return;
  }

  BigInt resultado = factorial(n);
  print('El factorial de $n es: $resultado');
}
