import 'dart:io';

void main() {
  const precios = {
    'Primor': 8.5,
    'Dulzura': 10.0,
    'Tentación': 7.0,
    'Explosión': 12.5,
  };

  print('Ingrese el tipo de chocolate (Primor, Dulzura, Tentación, Explosión):');
  String tipoChocolate = stdin.readLineSync()!.capitalize();

  if (!precios.containsKey(tipoChocolate)) {
    print('Tipo de chocolate inválido.');
    return;
  }

  print('Ingrese la cantidad de chocolates adquiridos:');
  int cantidad = int.parse(stdin.readLineSync()!);

  double precioUnitario = precios[tipoChocolate]!;
  double importeCompra = precioUnitario * cantidad;

  double descuentoPorcentaje;
  if (cantidad < 5) {
    descuentoPorcentaje = 0.04; // 4.0%
  } else if (cantidad >= 5 && cantidad < 10) {
    descuentoPorcentaje = 0.065; // 6.5%
  } else if (cantidad >= 10 && cantidad < 15) {
    descuentoPorcentaje = 0.09; // 9.0%
  } else {
    descuentoPorcentaje = 0.115; // 11.5%
  }

  double importeDescuento = importeCompra * descuentoPorcentaje;
  double importeAPagar = importeCompra - importeDescuento;

  int caramelosPorChocolate = importeAPagar >= 250 ? 3 : 2;
  int cantidadCaramelos = caramelosPorChocolate * cantidad;

  print('--- Resultados de la Compra ---');
  print('Importe de la compra: S/. ${importeCompra.toStringAsFixed(2)}');
  print('Importe del descuento: S/. ${importeDescuento.toStringAsFixed(2)}');
  print('Importe a pagar: S/. ${importeAPagar.toStringAsFixed(2)}');
  print('Cantidad de caramelos de obsequio: $cantidadCaramelos');
}

extension CapitalizeString on String {
  String capitalize() {
    return this[0].toUpperCase() + substring(1).toLowerCase();
  }
}
