import 'package:meu_app_oo/classes/pessoa_fisica.dart';
import 'package:meu_app_oo/classes/pessoa_juridica.dart';
import 'package:meu_app_oo/enum/tipo_notificacao.dart';
import 'package:meu_app_oo/service/enviar_notificacao.dart';

void main(List<String> arguments) {
  var pessoafisica1 = new PessoaFisica("Arthur", "Sumaré", "12345",tiponotificacao: TipoNotificacao.EMAIL);
  print(pessoafisica1);

  var pessoajuridica1 = new PessoaJuridica(
    "Arthur nico",
    "Campinas",
    "12837616238",
    tiponotificacao: TipoNotificacao.PUSH_NOTIFICATION,
  );
  print(pessoajuridica1);

  EnviarNotificacao enviarNotificacao = new EnviarNotificacao();
  enviarNotificacao.notificar(pessoafisica1);
  enviarNotificacao.notificar(pessoajuridica1);
}
