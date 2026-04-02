//fazendo abstração da pessoa
class Pessoa {
  
  //Classes tem propriedades e métodos
  // quando for executado, o sinal "?" faz a propriedade iniciar como null
  // ou String nome = '';

  String _nome= ''; 
  String _endereco ='';

  //criando setters
  void setNome(String nome){
    _nome = nome;
  }

  void setEndereco(String endereco){
    _endereco = endereco;
  }

  //getters
  String getNome(){
    return _nome;
  }

  String getEndereco(){
    return _endereco;
  }

  }