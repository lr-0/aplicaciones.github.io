import 'dart:io';

void main() {
  List<Map<String, dynamic>> listaEmpleados =
      []; // Lista para almacenar los datos de los empleados

  while (true) {
    print('Ingrese los minutos de tardanza del empleado (o -1 para terminar):');
    int minutosTardanza = int.parse(stdin.readLineSync()!);

    if (minutosTardanza == -1) {
      break; // Salir del bucle si el usuario ingresa -1
    }

    print('Ingrese el número de observaciones efectuadas al empleado:');
    int observaciones = int.parse(stdin.readLineSync()!);

    // Calcular puntaje de puntualidad
    int puntajePuntualidad;
    if (minutosTardanza == 0) {
      puntajePuntualidad = 10;
    } else if (minutosTardanza >= 1 && minutosTardanza <= 2) {
      puntajePuntualidad = 8;
    } else if (minutosTardanza >= 3 && minutosTardanza <= 5) {
      puntajePuntualidad = 6;
    } else if (minutosTardanza >= 6 && minutosTardanza <= 9) {
      puntajePuntualidad = 4;
    } else {
      puntajePuntualidad = 0;
    }

    // Calcular puntaje de rendimiento
    int puntajeRendimiento;
    if (observaciones == 0) {
      puntajeRendimiento = 10;
    } else if (observaciones == 1) {
      puntajeRendimiento = 8;
    } else if (observaciones == 2) {
      puntajeRendimiento = 5;
    } else if (observaciones == 3) {
      puntajeRendimiento = 1;
    } else {
      puntajeRendimiento = 0;
    }

    // Calcular puntaje total
    int puntajeTotal = puntajePuntualidad + puntajeRendimiento;

    // Calcular bonificación
    double bonificacion;
    if (puntajeTotal < 11) {
      bonificacion = puntajeTotal * 2.5;
    } else if (puntajeTotal >= 11 && puntajeTotal <= 13) {
      bonificacion = puntajeTotal * 5.0;
    } else if (puntajeTotal >= 14 && puntajeTotal <= 16) {
      bonificacion = puntajeTotal * 7.5;
    } else if (puntajeTotal >= 17 && puntajeTotal <= 19) {
      bonificacion = puntajeTotal * 10.0;
    } else {
      bonificacion = 12.5;
    }

    // Almacenar los resultados en la lista
    listaEmpleados.add({
      'minutosTardanza': minutosTardanza,
      'observaciones': observaciones,
      'puntajePuntualidad': puntajePuntualidad,
      'puntajeRendimiento': puntajeRendimiento,
      'puntajeTotal': puntajeTotal,
      'bonificacion': bonificacion,
    });

    print('--- Resultados de la Evaluación ---');
    print('Puntaje por Puntualidad: $puntajePuntualidad');
    print('Puntaje por Rendimiento: $puntajeRendimiento');
    print('Puntaje Total: $puntajeTotal');
    print('Bonificación: S/. ${bonificacion.toStringAsFixed(2)}');
    print('-----');
  }

  // Mostrar resumen de todos los empleados
  print('\n--- Resumen de Empleados ---');
  for (var empleado in listaEmpleados) {
    print('Minutos de Tardanza: ${empleado['minutosTardanza']}');
    print('Observaciones: ${empleado['observaciones']}');
    print('Puntaje por Puntualidad: ${empleado['puntajePuntualidad']}');
    print('Puntaje por Rendimiento: ${empleado['puntajeRendimiento']}');
    print('Puntaje Total: ${empleado['puntajeTotal']}');
    print('Bonificación: S/. ${empleado['bonificacion'].toStringAsFixed(2)}');
    print('-----');
  }
}
