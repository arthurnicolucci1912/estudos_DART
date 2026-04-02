import 'package:meu_app_oo/classes/pessoa.dart';

class PessoaFisica extends Pessoa {
  String _cpf = '';

  //constructor
  PessoaFisica(String nome, String endereco, String cpf)
    : super(nome, endereco) {
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
    }.toString();
  }
}
