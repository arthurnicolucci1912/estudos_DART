import 'dart:convert';
import 'dart:io';

class ConsoleUtils {
  static String readString() {
    return stdin.readLineSync(encoding: utf8) ?? "";
  }

  static String readStringText(String text) {
    print(text);
    return readString();
  }

  static double? readDouble() {
    var valor = readString();
    try {
      return double.parse(valor);
    } catch (e) {
      return null;
    }
  }

  static double? readDoubleText(String text) {
    print(text);
    return readDouble();
  }
}
