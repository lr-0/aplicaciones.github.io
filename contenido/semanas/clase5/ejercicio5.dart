import 'dart:io';

void main() {
  print('Ingresa el tamaño de las matrices (N):');
  int? n = int.parse(stdin.readLineSync()!);

  // Inicializar las matrices
  List<List<int>> matrizA = List.generate(n, (i) => List.filled(n, 0));
  List<List<int>> matrizB = List.generate(n, (i) => List.filled(n, 0));
  List<List<int>> matrizSuma = List.generate(n, (i) => List.filled(n, 0));

  // Llenar la primera matriz
  print('Ingresa los elementos de la matriz A:');
  for (int i = 0; i < n; i++) {
    for (int j = 0; j < n; j++) {
      print('Elemento A[$i][$j]:');
      matrizA[i][j] = int.parse(stdin.readLineSync()!);
    }
  }

  // Llenar la segunda matriz
  print('Ingresa los elementos de la matriz B:');
  for (int i = 0; i < n; i++) {
    for (int j = 0; j < n; j++) {
      print('Elemento B[$i][$j]:');
      matrizB[i][j] = int.parse(stdin.readLineSync()!);
    }
  }

  // Realizar la suma de las matrices
  for (int i = 0; i < n; i++) {
    for (int j = 0; j < n; j++) {
      matrizSuma[i][j] = matrizA[i][j] + matrizB[i][j];
    }
  }

  // Mostrar la matriz resultante
  print('La suma de las matrices A y B es:');
  for (int i = 0; i < n; i++) {
    for (int j = 0; j < n; j++) {
      stdout.write('${matrizSuma[i][j]} ');
    }
    print('');
  }
}
