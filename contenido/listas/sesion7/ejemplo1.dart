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
    print('Código: $codigo');
    print('Nombres: $nombres');
    print('Nota 1: $nota1');
    print('Nota 2: $nota2');
    print('Promedio: ${calcularPromedio()}');
  }

  // Método para calcular el promedio
  double calcularPromedio() {
    return (nota1 + nota2) / 2;
  }
}

// Función principal
void main() {
  List<Estudiante> listaEstudiantes = [];

  while (true) {
    print('Ingrese el código del estudiante (o "salir" para terminar):');
    String? codigo = stdin.readLineSync();
    if (codigo?.toLowerCase() == 'salir') break;

    print('Ingrese los nombres del estudiante:');
    String? nombres = stdin.readLineSync();

    print('Ingrese la primera nota:');
    double nota1 = double.parse(stdin.readLineSync()!);

    print('Ingrese la segunda nota:');
    double nota2 = double.parse(stdin.readLineSync()!);

    // Agregar estudiante a la lista
    listaEstudiantes.add(Estudiante(codigo!, nombres!, nota1, nota2));

    print('Estudiante agregado. ¿Desea agregar otro estudiante? (sí/no)');
    String? respuesta = stdin.readLineSync();
    if (respuesta?.toLowerCase() != 'sí') break;
  }

  // Mostrar información de los estudiantes
  print('\n--- Información de Estudiantes ---');
  for (var estudiante in listaEstudiantes) {
    estudiante.mostrarInformacion();
    print('-----');
  }
}
