
import 'package:meu_app_oo/classes/pessoa_fisica.dart';
import 'package:meu_app_oo/classes/pessoa_juridica.dart';
import 'package:meu_app_oo/enum/tipo_notificacao.dart';

void main(List<String> arguments) {

  var pessoafisica1 = new PessoaFisica("Arthur", "Sumaré", "12345");
  print(pessoafisica1);

  var pessoajuridica1 = new PessoaJuridica("Arthur nico", "Campinas", "12837616238", tiponotificacao: TipoNotificacao.PUSH_NOTIFICATION);
  print(pessoajuridica1);
}
