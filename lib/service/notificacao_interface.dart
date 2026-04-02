//interface n chama interface no dart, é uma abstract
import 'package:meu_app_oo/classes/pessoa_abstract.dart';

abstract class NotificacaoInterface {
  //a interface diz que as classes de notificações precisam ter um método do tipo "void enviarNotificacao"
  void enviarNotificacao(Pessoa pessoa);
}