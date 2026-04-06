import 'dart:convert';
import 'dart:io';

//na classe console utils, estamos criando métodos de leitura e gravação de vars para facilitar o uso do nosso programa
class ConsoleUtils {
  static String lerStringComContexto(String texto) {
    print(texto);
    return lerString();
  }

  static String lerString() {
    return stdin.readLineSync(encoding: utf8) ?? "";
  }

  static double? lerDouble() {
    var value = lerString();
    try {
      return double.parse(value);
    } catch (e) {
      return null;
    }
  }

  static double? lerDoubleComTextoESaida(String texto, String valorSaida) {
    do {
      try {
        var value = lerStringComContexto(texto);
        if (value == valorSaida) {
          return null;
        }

        return double.parse(value);
      } catch (e) {
        print(texto);
      }
    } while (true);
  }

  static double? lerDoubleComTexto(String texto) {
    print(texto);
    return lerDouble();
  }
}
