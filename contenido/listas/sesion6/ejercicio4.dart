import 'dart:io';

void main() {
  const precios = {
    'P1': 15.0,
    'P2': 17.5,
    'P3': 20.0,
  };

  List<Map<String, dynamic>> listaCompras =
      []; // Lista para almacenar las compras

  while (true) {
    print('Ingrese el tipo de producto (P1, P2, P3) o "salir" para terminar:');
    String tipoProducto = stdin.readLineSync()!.toUpperCase();

    if (tipoProducto.toLowerCase() == 'salir') {
      break; // Salir del bucle si el usuario escribe "salir"
    }

    if (!precios.containsKey(tipoProducto)) {
      print('Tipo de producto inválido.');
      continue; // Volver a empezar el bucle
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

    // Almacenar la compra en la lista
    listaCompras.add({
      'tipoProducto': tipoProducto,
      'cantidad': cantidad,
      'importeAPagar': importeAPagar,
      'regalo': regalo,
    });

    print('--- Resultados de la Compra ---');
    print('Importe a pagar: S/. ${importeAPagar.toStringAsFixed(2)}');
    print('Regalo: $regalo');
    print('-----');
  }

  // Mostrar resumen de todas las compras
  print('\n--- Resumen de Compras ---');
  for (var compra in listaCompras) {
    print('Tipo de Producto: ${compra['tipoProducto']}');
    print('Cantidad: ${compra['cantidad']}');
    print('Importe a pagar: S/. ${compra['importeAPagar'].toStringAsFixed(2)}');
    print('Regalo: ${compra['regalo']}');
    print('-----');
  }
}
