import 'dart:io';

void main() {
  const pensiones = {
    'A': 550.0,
    'B': 500.0,
    'C': 460.0,
    'D': 400.0,
  };

  List<Map<String, dynamic>> listaEstudiantes = []; // Lista para almacenar los estudiantes

  while (true) {
    print('Ingrese la categoría del estudiante (A, B, C, D) o "salir" para terminar:');
    String categoria = stdin.readLineSync()!.toUpperCase();

    if (categoria == 'SALIR') {
      break; // Salir del bucle si el usuario escribe "salir"
    }

    print('Ingrese el promedio ponderado del ciclo anterior:');
    double promedio = double.parse(stdin.readLineSync()!);

    double descuento = 0.0;
    if (promedio >= 0 && promedio < 14.00) {
      descuento = 0.0; 
    } else if (promedio >= 14.00 && promedio < 16.00) {
      descuento = 0.10; 
    } else if (promedio >= 16.00 && promedio < 18.00) {
      descuento = 0.12; 
    } else if (promedio >= 18.00 && promedio <= 20.00) {
      descuento = 0.15; 
    } else {
      print('Promedio inválido. Debe estar entre 0 y 20.');
      continue; // Volver a empezar el bucle
    }

    if (!pensiones.containsKey(categoria)) {
      print('Categoría inválida. Debe ser A, B, C o D.');
      continue; // Volver a empezar el bucle
    }

    double pensionActual = pensiones[categoria]!;
    double rebaja = pensionActual * descuento;
    double nuevaPension = pensionActual - rebaja;

    // Guardar información del estudiante en la lista
    listaEstudiantes.add({
      'categoria': categoria,
      'promedio': promedio,
      'pensionActual': pensionActual,
      'rebaja': rebaja,
      'nuevaPension': nuevaPension,
    });

    print('Pensión actual: S/. ${pensionActual.toStringAsFixed(2)}');
    print('Rebaja: S/. ${rebaja.toStringAsFixed(2)}');
    print('Nueva pensión: S/. ${nuevaPension.toStringAsFixed(2)}');
    print('-----');
  }

  // Mostrar resumen de todos los estudiantes
  print('\n--- Resumen de Estudiantes ---');
  for (var estudiante in listaEstudiantes) {
    print('Categoría: ${estudiante['categoria']}');
    print('Promedio: ${estudiante['promedio']}');
    print('Pensión actual: S/. ${estudiante['pensionActual'].toStringAsFixed(2)}');
    print('Rebaja: S/. ${estudiante['rebaja'].toStringAsFixed(2)}');
    print('Nueva pensión: S/. ${estudiante['nuevaPension'].toStringAsFixed(2)}');
    print('-----');
  }
}
