class Pessoa {
  String _nome = '';
  double _peso = 0.0;
  double _altura = 0.0;

  //encapsulamento poir construtor
  Pessoa(String nome, double peso, double altura) {
    _nome = nome;
    _peso = peso;
    _altura = altura;
  }

  //getters
  String getNome() {
    return _nome;
  }

  double getPeso() {
    return _peso;
  }

  double getAltura() {
    return _altura;
  }

  //setters
  void setNome(String nome) {
    _nome = nome;
  }
  
  void setPeso(double peso) {
    _peso = peso;
  }

  void setAltura(double altura) {
    _altura = altura;
  }

 double calcularIMC() {
    double imc = _peso / (_altura * _altura);
    print("O IMC de ${_nome} é: $imc");
    return imc; 
  }
}
