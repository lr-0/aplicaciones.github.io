import 'dart:io';

void main() {
  
  const pensiones = {
    'A': 550.0,
    'B': 500.0,
    'C': 460.0,
    'D': 400.0,
  };

  print('Ingrese la categoría del estudiante (A, B, C, D):');
  String categoria = stdin.readLineSync()!.toUpperCase();

  print('Ingrese el promedio ponderado del ciclo anterior:');
  double promedio = double.parse(stdin.readLineSync()!);

  double descuento = 0.0;
  if (promedio >= 0 && promedio < 14.00) {
    descuento = 0.0; 
  } else if (promedio >= 14.00 && promedio < 16.00) {
    descuento = 0.10; 
  } else if (promedio >= 16.00 && promedio < 18.00) {
    descuento = 0.12; 
  } else if (promedio >= 18.00 && promedio <= 20.00) {
    descuento = 0.15; 
  } else {
    print('Promedio inválido. Debe estar entre 0 y 20.');
    return;
  }

  if (!pensiones.containsKey(categoria)) {
    print('Categoría inválida. Debe ser A, B, C o D.');
    return;
  }

  double pensionActual = pensiones[categoria]!;
  double rebaja = pensionActual * descuento;
  double nuevaPension = pensionActual - rebaja;

  print('Pensión actual: S/. ${pensionActual.toStringAsFixed(2)}');
  print('Rebaja: S/. ${rebaja.toStringAsFixed(2)}');
  print('Nueva pensión: S/. ${nuevaPension.toStringAsFixed(2)}');
}
