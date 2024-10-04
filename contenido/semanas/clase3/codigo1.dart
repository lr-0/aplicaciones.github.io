import 'dart:math';

void main() {
  // Definir valores de radio y altura
  double r = 5.0; // Puedes cambiar estos valores
  double h = 10.0;

  // Calcular el área total A = 2πr(r + h)
  double area = 2 * pi * r * (r + h);

  // Calcular el volumen V = πr^2h
  double volumen = pi * pow(r, 2) * h;

  // Imprimir resultados
  print('El área total del cilindro es: $area');
  print('El volumen del cilindro es: $volumen');
}