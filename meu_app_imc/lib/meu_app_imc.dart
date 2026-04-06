import 'package:meu_app_imc/console_utils.dart';
import 'package:meu_app_imc/models/pessoa.dart';

void execute() {
  print("<Calculadora de IMC>");
  String nome = ConsoleUtils.readStringText("Digite seu nome: ");
  double? peso = ConsoleUtils.readDoubleText("Digite seu peso: ");
  double? altura = ConsoleUtils.readDoubleText("Digite sua altura: ");
  var pessoa = Pessoa(nome, peso ?? 0, altura ?? 0);
  print("Olá ${pessoa.getNome()}, seu IMC é: ${pessoa.calcularIMC()}");
}
