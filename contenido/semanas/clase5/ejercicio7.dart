import 'dart:io';

void main() {
  print('Ingresa el tamaño de la matriz (n):');
  int? n = int.parse(stdin.readLineSync()!);

  List<List<int>> matriz = List.generate(n, (i) => List.filled(n, 0));

  int valor = 1;
  int filaInicio = 0;
  int filaFin = n - 1;
  int colInicio = 0;
  int colFin = n - 1;

  while (filaInicio <= filaFin && colInicio <= colFin) {
  
    for (int col = colInicio; col <= colFin; col++) {
      matriz[filaInicio][col] = valor++;
    }
    filaInicio++;

    for (int fila = filaInicio; fila <= filaFin; fila++) {
      matriz[fila][colFin] = valor++;
    }
    colFin--;

    if (filaInicio <= filaFin) {
      for (int col = colFin; col >= colInicio; col--) {
        matriz[filaFin][col] = valor++;
      }
      filaFin--;
    }

    if (colInicio <= colFin) {
      for (int fila = filaFin; fila >= filaInicio; fila--) {
        matriz[fila][colInicio] = valor++;
      }
      colInicio++;
    }
  }

  print('Matriz en forma de espiral:');
  for (int i = 0; i < n; i++) {
    for (int j = 0; j < n; j++) {
      stdout.write('${matriz[i][j]} '.padLeft(4));
    }
    print('');
  }
}
