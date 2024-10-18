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
  List<Estudiante> listaEstudiantes = [];

  while (true) {
    print('Ingrese el código del estudiante (o "salir" para terminar):');
    String? codigo = stdin.readLineSync();
    if (codigo == null || codigo.toLowerCase() == 'salir') break;

    print('Ingrese el nombre del estudiante:');
    String? nombres = stdin.readLineSync();

    print('Ingrese la primera nota:');
    double nota1 = double.parse(stdin.readLineSync()!);

    print('Ingrese la segunda nota:');
    double nota2 = double.parse(stdin.readLineSync()!);

    // Agregar estudiante a la lista
    listaEstudiantes.add(Estudiante(codigo, nombres!, nota1, nota2));

    print('¿Desea agregar otro estudiante? (sí/no)');
    String? respuesta = stdin.readLineSync();
    if (respuesta == null || respuesta.toLowerCase() != 'sí') break;
  }

  // Mostrar información de los estudiantes
  print('\n--- Información de Estudiantes ---');
  for (var estudiante in listaEstudiantes) {
    estudiante.mostrarInformacion();
    print('-----');
  }

  // Opción para actualizar las notas de un estudiante
  print('¿Desea actualizar las notas de un estudiante? (sí/no)');
  String? actualizarRespuesta = stdin.readLineSync();
  if (actualizarRespuesta != null &&
      actualizarRespuesta.toLowerCase() == 'sí') {
    print('Ingrese el código del estudiante a actualizar:');
    String? codigoActualizar = stdin.readLineSync();

    // Buscar estudiante por código
    Estudiante? estudianteAActualizar = listaEstudiantes.firstWhere(
      (estudiante) => estudiante.codigo == codigoActualizar,
      orElse: () => Estudiante(
          'N/A', 'Estudiante no encontrado', 0, 0), // Estudiante ficticio
    );

    if (estudianteAActualizar.codigo == 'N/A') {
      print(estudianteAActualizar.nombres); // Mensaje de error
    } else {
      estudianteAActualizar.actualizarNotas();
      estudianteAActualizar.mostrarInformacion();
    }
  }
}
