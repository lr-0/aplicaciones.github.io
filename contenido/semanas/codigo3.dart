import 'dart:io'; // Necesario para leer desde la terminal

void main() {
  // Pedir al usuario que ingrese el monto total de inversión
  print('Ingrese el monto total de inversión:');
  double? totalDinero = double.parse(stdin.readLineSync()!); // Leer y convertir a double

  // Calcular el gasto en cada rubro
  double alquiler = 0.23 * totalDinero; // Alquiler de espacio: 23%
  double publicidad = 0.07 * totalDinero; // Publicidad: 7%
  double transporte = 0.26 * totalDinero; // Transporte: 26%
  double servicios = 0.12 * totalDinero; // Servicios feriales: 12%
  double decoracion = 0.21 * totalDinero; // Decoración: 21%
  double gastosVarios = 0.11 * totalDinero; // Gastos varios: 11%

  // Imprimir los resultados
  print('Gasto en alquiler de espacio: \$${alquiler.toStringAsFixed(2)}');
  print('Gasto en publicidad: \$${publicidad.toStringAsFixed(2)}');
  print('Gasto en transporte: \$${transporte.toStringAsFixed(2)}');
  print('Gasto en servicios feriales: \$${servicios.toStringAsFixed(2)}');
  print('Gasto en decoración: \$${decoracion.toStringAsFixed(2)}');
  print('Gasto en gastos varios: \$${gastosVarios.toStringAsFixed(2)}');
}