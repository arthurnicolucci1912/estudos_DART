import 'package:meu_app_oo/classes/pessoa_abstract.dart';
import 'package:meu_app_oo/enum/tipo_notificacao.dart';

class PessoaFisica extends Pessoa {
  String _cpf = '';

  //constructor
  PessoaFisica(String nome, String endereco, String cpf, {TipoNotificacao tiponotificacao = TipoNotificacao.NENHUM})
    : super(nome, endereco, tiponotificacao: tiponotificacao) {
    _cpf = cpf;
  }

  //setters

  void setCpf(String cpf) {
    _cpf = cpf;
  }

  //getters

  String getCpf() {
    return _cpf;
  }

  @override
  String toString() {
    return {
      "Tipo": "PF",
      "Nome ": super.getNome(),
      "Endereço: ": super.getEndereco(),
      "CPF: ": _cpf,
      "Tipo Notificação" : super.getTipoNotificacao()
    }.toString();
  }
}
