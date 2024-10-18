import 'dart:io';

void main() {
  const precios = {
    'Primor': 8.5,
    'Dulzura': 10.0,
    'Tentación': 7.0,
    'Explosión': 12.5,
  };

  List<Map<String, dynamic>> listaCompras = []; // Lista para almacenar las compras

  while (true) {
    print('Ingrese el tipo de chocolate (Primor, Dulzura, Tentación, Explosión) o "salir" para terminar:');
    String tipoChocolate = stdin.readLineSync()!.capitalize();

    if (tipoChocolate.toLowerCase() == 'salir') {
      break; // Salir del bucle si el usuario escribe "salir"
    }

    if (!precios.containsKey(tipoChocolate)) {
      print('Tipo de chocolate inválido.');
      continue; // Volver a empezar el bucle
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

    // Almacenar la compra en la lista
    listaCompras.add({
      'tipoChocolate': tipoChocolate,
      'cantidad': cantidad,
      'importeCompra': importeCompra,
      'importeDescuento': importeDescuento,
      'importeAPagar': importeAPagar,
      'cantidadCaramelos': cantidadCaramelos,
    });

    print('--- Resultados de la Compra ---');
    print('Importe de la compra: S/. ${importeCompra.toStringAsFixed(2)}');
    print('Importe del descuento: S/. ${importeDescuento.toStringAsFixed(2)}');
    print('Importe a pagar: S/. ${importeAPagar.toStringAsFixed(2)}');
    print('Cantidad de caramelos de obsequio: $cantidadCaramelos');
    print('-----');
  }

  // Mostrar resumen de todas las compras
  print('\n--- Resumen de Compras ---');
  for (var compra in listaCompras) {
    print('Tipo de Chocolate: ${compra['tipoChocolate']}');
    print('Cantidad: ${compra['cantidad']}');
    print('Importe de la compra: S/. ${compra['importeCompra'].toStringAsFixed(2)}');
    print('Importe del descuento: S/. ${compra['importeDescuento'].toStringAsFixed(2)}');
    print('Importe a pagar: S/. ${compra['importeAPagar'].toStringAsFixed(2)}');
    print('Cantidad de caramelos de obsequio: ${compra['cantidadCaramelos']}');
    print('-----');
  }
}

extension CapitalizeString on String {
  String capitalize() {
    return this[0].toUpperCase() + substring(1).toLowerCase();
  }
}
