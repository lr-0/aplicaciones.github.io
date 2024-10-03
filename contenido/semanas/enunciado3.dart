import 'dart:io';

void main() {
  // Definiciones de constantes
  const double sueldoBasico = 600.0;
  const double porcentajeComisionBaja = 0.05;
  const double porcentajeComisionAlta = 0.07;
  const double bonificacionBaja = 25.0;
  const double bonificacionAlta = 22.0;
  const double limiteComision = 15000.0;
  const double limiteSueldoBruto = 3500.0;

  // Solicitar el importe total vendido
  print("Ingrese el importe total vendido: ");
  double importeTotalVendido = double.parse(stdin.readLineSync()!);

  // Solicitar el número de hijos
  print("Ingrese el número de hijos: ");
  int numeroHijos = int.parse(stdin.readLineSync()!);

  // Calcular la comisión
  double comision = (importeTotalVendido > limiteComision)
      ? importeTotalVendido * porcentajeComisionAlta
      : importeTotalVendido * porcentajeComisionBaja;

  // Calcular la bonificación
  double bonificacion = (numeroHijos < 5)
      ? numeroHijos * bonificacionBaja
      : numeroHijos * bonificacionAlta;

  // Calcular el sueldo bruto
  double sueldoBruto = sueldoBasico + comision + bonificacion;

  // Calcular el descuento
  double descuento = (sueldoBruto > limiteSueldoBruto)
      ? sueldoBruto * 0.15
      : sueldoBruto * 0.11;

  // Calcular el sueldo neto
  double sueldoNeto = sueldoBruto - descuento;

  // Mostrar resultados
  print("\n--- Resultados del cálculo salarial ---");
  print("Sueldo Básico: S/. ${sueldoBasico.toStringAsFixed(2)}");
  print("Comisión: S/. ${comision.toStringAsFixed(2)}");
  print("Bonificación: S/. ${bonificacion.toStringAsFixed(2)}");
  print("Sueldo Bruto: S/. ${sueldoBruto.toStringAsFixed(2)}");
  print("Descuento: S/. ${descuento.toStringAsFixed(2)}");
  print("Sueldo Neto: S/. ${sueldoNeto.toStringAsFixed(2)}");
}
