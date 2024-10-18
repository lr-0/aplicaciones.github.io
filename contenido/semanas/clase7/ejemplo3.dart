import 'dart:io';

// Clase Estudiante
class Estudiante {
  String codigo;
  String nombres;
  double nota1;
  double nota2;

  // Constructor
  Estudiante(this.codigo, this.nombres, this.nota1, this.nota2);

  // Método para mostrar la información del estudiante
  void mostrarInformacion() {
    print('\n--- Información del Estudiante ---');
    print('Código: $codigo');
    print('Nombres: $nombres');
    print('Nota 1: $nota1');
    print('Nota 2: $nota2');
    print('Promedio: ${calcularPromedio()}');
    print('Estado: ${verificarEstado()}');
  }

  // Método para calcular el promedio
  double calcularPromedio() {
    return (nota1 + nota2) / 2;
  }

  // Método para verificar si el estudiante ha aprobado
  String verificarEstado() {
    double promedio = calcularPromedio();
    return promedio >= 6.0 ? 'Aprobado' : 'Reprobado';
  }

  // Método para actualizar las notas del estudiante
  void actualizarNotas() {
    print('Ingrese la nueva nota 1:');
    nota1 = double.parse(stdin.readLineSync()!);

    print('Ingrese la nueva nota 2:');
    nota2 = double.parse(stdin.readLineSync()!);

    print('Notas actualizadas con éxito.');
  }
}

// Función principal
void main() {
  print('Ingrese el código del estudiante:');
  String? codigo = stdin.readLineSync();

  print('Ingrese el nombre del estudiante:');
  String? nombres = stdin.readLineSync();

  print('Ingrese la primera nota:');
  double? nota1 = double.parse(stdin.readLineSync()!);

  print('Ingrese la segunda nota:');
  double? nota2 = double.parse(stdin.readLineSync()!);

  Estudiante estudiante = Estudiante(codigo!, nombres!, nota1!, nota2!);

  estudiante.mostrarInformacion();

  // Llamada al método para actualizar notas
  estudiante.actualizarNotas();
  estudiante
      .mostrarInformacion(); // Muestra la información después de actualizar las notas
}
