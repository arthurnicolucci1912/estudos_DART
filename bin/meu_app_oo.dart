import 'package:meu_app_oo/classes/Pessoa.dart';

void main(List<String> arguments) {
  var p1 = new Pessoa();
  //as prop da classe não podem ficar expostas -> encapsulamento
  p1.setNome("Arthur");
  p1.setEndereco("Sumaré");
  print(p1.getNome());
  print(p1.getEndereco());
}
