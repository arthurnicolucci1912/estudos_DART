class Aluno {
  String _nome = '';
  final List<double> _notas = [];


  Aluno(String nome){
    _nome = nome;
  }

  //setters
  void setNome(String nome){
    _nome = nome;
  }

  //getters
  String getNome(){
    return _nome;
  }

  List<double> getNotas(){
    return _notas;
  }

//método para adicionar notas na lista
  void adicionarNota(double nota){
    _notas.add(nota);
  }

  //funçao que retorna uma média
  double retornaMedia(){
    var totalNotas = 0.0;
    for (var nota in _notas){
      totalNotas = totalNotas + nota;
    }
    var media = totalNotas / _notas.length;
    //se a media não for um numero retorna 0, se for retorna o valor da media em si
    return media.isNaN ? 0: media;

  }

  bool aprovado(double notaCorte){
    return retornaMedia() >= notaCorte;
  }
}