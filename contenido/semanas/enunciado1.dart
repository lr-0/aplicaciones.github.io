import 'dart:io';

void main() {

  Map<String, double> pensiones = {
    'A': 550.0,
    'B': 500.0,
    'C': 460.0,
    'D': 400.0,
  };

  
  Map<double, double> descuentos = {
    0: 0.0,
    14: 0.10,
    16: 0.12,
    18: 0.15,
  };

  
  print("Ingrese la categoría del estudiante (A, B, C, D): ");
  String categoria = stdin.readLineSync()!.toUpperCase();

  
  if (!pensiones.containsKey(categoria)) {
    print("Categoría inválida. Por favor, ingrese A, B, C o D.");
    return;
  }

  print("Ingrese el promedio ponderado del ciclo anterior: ");
  double promedio = double.parse(stdin.readLineSync()!);

  
  double descuento = 0.0;
  if (promedio >= 18) {
    descuento = descuentos[18]!;
  } else if (promedio >= 16) {
    descuento = descuentos[16]!;
  } else if (promedio >= 14) {
    descuento = descuentos[14]!;
  }

  
  double pensionActual = pensiones[categoria]!;
  double rebaja = pensionActual * descuento;
  double nuevaPension = pensionActual - rebaja;


  print("Pensión actual: S/. ${pensionActual.toStringAsFixed(2)}");
  print("Rebaja: S/. ${rebaja.toStringAsFixed(2)}");
  print("Nueva pensión: S/. ${nuevaPension.toStringAsFixed(2)}");
}
