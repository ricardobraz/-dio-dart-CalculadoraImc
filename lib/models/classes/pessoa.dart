class Pessoa {
  String _nome = "";
  double _peso = 0;
  double _altura = 0;
  double _imc = 0;
  String _status = "";

  void setNome(String nome) {
    _nome = nome;
  }

  String getNome() {
    return _nome;
  }

  void setPeso(double peso) {
    _peso = peso;
  }

  double getPeso() {
    return _peso;
  }

  void setAltura(double altura) {
    _altura = altura;
  }

  double getAltura() {
    return _altura;
  }

  void setImc(double imc) {
    _imc = imc;
  }

  double getImc() {
    return _imc;
  }

  void setStatus(String status) {
    _status = status;
  }

  String getStatus() {
    return _status;
  }

  Pessoa(String nome, double peso, double altura) {
    _nome = nome;
    _peso = peso;
    _altura = altura;
  }

  @override
  String toString() {
    return {
      "Nome": _nome,
      "Peso": "${_peso}kg",
      "Altura": "${_altura}m",
    }.toString();
  }
}
