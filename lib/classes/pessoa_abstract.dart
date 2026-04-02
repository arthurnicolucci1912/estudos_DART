//classe abstrata apenas para definir os tipos de pessoa
//Uma classe abstrata é o molde para as outras
import 'package:meu_app_oo/enum/tipo_notificacao.dart';

abstract class Pessoa {
  //Classes tem propriedades e métodos
  // quando for executado, o sinal "?" faz a propriedade iniciar como null
  // ou String nome = '';

  String _nome = '';
  String _endereco = '';
  TipoNotificacao _tipoNotificacao = TipoNotificacao.NENHUM;

  //construtor
  Pessoa(String nome, String endereco, {TipoNotificacao tiponotificacao = TipoNotificacao.NENHUM}) {
    _nome = nome;
    _endereco = endereco;
    _tipoNotificacao = tiponotificacao;
  }

  //criando setters
  void setNome(String nome) {
    _nome = nome;
  }

  void setEndereco(String endereco) {
    _endereco = endereco;
  }

  void setTipoNotificacao(TipoNotificacao tiponotificacao) {
    _tipoNotificacao = tiponotificacao;
  }

  //getters
  String getNome() {
    return _nome;
  }

  String getEndereco() {
    return _endereco;
  }

  TipoNotificacao getTipoNotificacao() {
    return _tipoNotificacao;
  }

  //metodo para print
  //sobrescrevendo toString
  //várias funções de mesmo nome que fazem coisas diferentes -> polimorfismo

  @override
  String toString() {
    return {
      "Nome": _nome,
      "Endereco": _endereco,
      "Tipo Notificação" : _tipoNotificacao
    }.toString(); // -> toString() da classe objects do dart
  }
}
