void main() {
  // Definir la cantidad total de dinero a repartir
  double totalDinero = 1000.0; // Puedes cambiar este valor

  // Calcular el monto recibido por cada hijo
  double josue = 0.27 * totalDinero; // Josué recibe el 27% del total
  double daniel = 0.25 * totalDinero; // Daniel recibe el 25% del total
  double tamar = 0.85 * josue; // Tamar recibe el 85% de lo que recibe Josué
  double caleb = 0.23 * (josue + daniel); // Caleb recibe el 23% de lo que reciben Josué y Daniel
  double david = totalDinero - (josue + daniel + tamar + caleb); // David recibe lo que queda

  // Imprimir los resultados
  print('Josué recibe: \$${josue.toStringAsFixed(2)}');
  print('Daniel recibe: \$${daniel.toStringAsFixed(2)}');
  print('Tamar recibe: \$${tamar.toStringAsFixed(2)}');
  print('Caleb recibe: \$${caleb.toStringAsFixed(2)}');
  print('David recibe: \$${david.toStringAsFixed(2)}');
}