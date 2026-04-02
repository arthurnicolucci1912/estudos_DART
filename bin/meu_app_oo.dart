import 'package:meu_app_oo/classes/pessoa.dart';
import 'package:meu_app_oo/classes/pessoa_fisica.dart';
import 'package:meu_app_oo/classes/pessoa_juridica.dart';

void main(List<String> arguments) {
  var p1 = new Pessoa("Arthur", "Sumare");
  //as prop da classe não podem ficar expostas -> encapsulamento
  print(p1);

  var pessoafisica1 = new PessoaFisica("Arthur", "Sumaré", "12345");
  print(pessoafisica1);

  var pessoajuridica1 = new PessoaJuridica("Arthur nico", "Campinas", "12837616238");
  print(pessoajuridica1);
}
