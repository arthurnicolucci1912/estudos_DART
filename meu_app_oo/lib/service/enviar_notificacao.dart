import 'package:meu_app_oo/classes/pessoa_abstract.dart';
import 'package:meu_app_oo/enum/tipo_notificacao.dart';
import 'package:meu_app_oo/service/impl/notificacao_SMS.dart';
import 'package:meu_app_oo/service/impl/notificacao_email.dart';
import 'package:meu_app_oo/service/impl/notificacao_push.dart';
import 'package:meu_app_oo/service/notificacao_interface.dart';

class EnviarNotificacao {
  //interface é um contrato -> diz o que tem que ser fesito
  //o que uma classe tem que ter para que ela funcione
  NotificacaoInterface? notificacao;

  void notificar(Pessoa pessoa) {
    switch (pessoa.getTipoNotificacao()) {
      case TipoNotificacao.EMAIL:
        notificacao = NotificacaoEmail();
        break;

      case TipoNotificacao.PUSH_NOTIFICATION:
        notificacao = NotificacaoPush();
        break;

      case TipoNotificacao.SMS:
        notificacao = NotificacaoSMS();
        break;
      default:
        break;
    }
    //cria uma condição para ter certeza que o objeto notificação vai vir com um valor
    
    if(notificacao != null){
      //por isso o uso do "!".
      notificacao!.enviarNotificacao(pessoa);
    }else{
      print("Pessoa sem notificação");
    }
  }
}
