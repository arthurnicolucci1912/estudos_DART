import 'package:meu_app_oo/classes/pessoa_abstract.dart';
import 'package:meu_app_oo/enum/tipo_notificacao.dart';

class PessoaJuridica extends Pessoa {
  String _cnpj = '';

  //constructor
  PessoaJuridica(String nome, String endereco, String cnpj, {TipoNotificacao tiponotificacao = TipoNotificacao.NENHUM}) //-> significa que o tipo de notificação é opcional
    : super(nome, endereco, tiponotificacao: tiponotificacao) {
    _cnpj = cnpj;
  }

  //setters

  void setcnpj(String cnpj) {
    _cnpj = cnpj;
  }

  //getters
  String getcnpj() {
    return _cnpj;
  }

  @override
  String toString() {
    return {
      "Tipo": "PJ",
      "Nome ": super.getNome(),
      "Endereço: ": super.getEndereco(),
      "cnpj: ": _cnpj,
      "Tipo Notificação" : super.getTipoNotificacao()
    }.toString();
  }
}
