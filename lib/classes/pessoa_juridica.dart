import 'package:meu_app_oo/classes/pessoa.dart';

class PessoaJuridica extends Pessoa {
  String _cnpj = '';

  //constructor
  PessoaJuridica(String nome, String endereco, String cnpj)
    : super(nome, endereco) {
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
    }.toString();
  }
}
