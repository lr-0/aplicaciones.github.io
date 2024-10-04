import 'dart:io';

void main() {
  // Solicitar edad del hombre
  print("Ingrese su edad: ");
  int edad = int.parse(stdin.readLineSync()!);

  // Solicitar nivel del sistema de beneficios
  print("Ingrese su nivel del sistema de beneficios (1, 2, 3 ): ");
  int nivel = int.parse(stdin.readLineSync()!);

  // Inicializar variables para el costo y el descuento
  double costo = 0.0;
  double descuento = 0.0;

  // Determinar costo y descuento según la edad y el nivel
  if (edad > 18) {
    costo = 350.0;

    // Descuentos para mayores de 18 años
    switch (nivel) {
      case 1:
        descuento = 0.40; // 40%
        break;
      case 2:
        descuento = 0.30; // 30%
        break;
      case 3:
        descuento = 0.15; // 15%
        break;
      default:
        descuento = 0.0; // Sin descuento
    }
  } else if (edad == 18) {
    costo = 200.0;

    // Descuentos para jóvenes de 18 años
    switch (nivel) {
      case 1:
        descuento = 0.60; // 60%
        break;
      case 2:
        descuento = 0.40; // 40%
        break;
      case 3:
        descuento = 0.20; // 20%
        break;
      default:
        descuento = 0.0; // Sin descuento
    }
  } else {
    print("Lo sentimos, debes tener 18 años o más para obtener una libreta militar.");
    return;
  }

  // Calcular el monto del descuento y el precio final
  double montoDescuento = costo * descuento;
  double precioFinal = costo - montoDescuento;

  // Mostrar resultados
  print("Costo de la libreta: S/. ${costo.toStringAsFixed(2)}");
  print("Descuento aplicado: S/. ${montoDescuento.toStringAsFixed(2)}");
  print("Valor final a pagar: S/. ${precioFinal.toStringAsFixed(2)}");
}
