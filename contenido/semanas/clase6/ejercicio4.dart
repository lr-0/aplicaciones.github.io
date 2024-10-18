import 'dart:io';

void main() {
  const precios = {
    'P1': 15.0,
    'P2': 17.5,
    'P3': 20.0,
  };

  print('Ingrese el tipo de producto (P1, P2, P3):');
  String tipoProducto = stdin.readLineSync()!.toUpperCase();

  if (!precios.containsKey(tipoProducto)) {
    print('Tipo de producto inválido.');
    return;
  }

  print('Ingrese la cantidad de unidades adquiridas:');
  int cantidad = int.parse(stdin.readLineSync()!);

  double precioUnitario = precios[tipoProducto]!;
  double importeAPagar = precioUnitario * cantidad;

  String regalo;
  if (cantidad < 26) {
    regalo = 'Un lapicero';
  } else if (cantidad >= 26 && cantidad <= 50) {
    regalo = 'Un cuaderno';
  } else {
    regalo = 'Una agenda';
  }

  print('--- Resultados de la Compra ---');
  print('Importe a pagar: S/. ${importeAPagar.toStringAsFixed(2)}');
  print('Regalo: $regalo');
}
