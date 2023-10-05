import 'package:calculadora_imc/models/classes/pessoa.dart';

class Resultado extends Pessoa {
  double _imc = 0;
  String _status = "";

  @override
  void setImc(double imc) {
    _imc = imc;
  }

  @override
  double getImc() {
    return _imc;
  }

  @override
  void setStatus(String status) {
    _status = status;
  }

  @override
  String getStatus() {
    return _status;
  }

  Resultado(String nome, double peso, double altura, double imc)
      : super(nome, peso, altura) {
    _imc = imc;
  }

  @override
  String toString() {
    return {
      "Nome": getNome(),
      "Peso": "${getPeso()}kg",
      "Altura": "${getAltura()}m",
      "IMC": _imc
    }.toString();
  }
}
