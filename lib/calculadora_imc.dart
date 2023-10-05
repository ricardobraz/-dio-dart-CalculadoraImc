import 'package:calculadora_imc/models/functions/utils.dart';
import 'package:calculadora_imc/models/classes/pessoa.dart';

void execute() {
  String nome = lerStringComTexto("Digite seu nome...");
  double peso = lerDoubleComTexto("Digite seu peso em kg...");
  double altura = lerDoubleComTexto("Digite sua altura em metros...");

  Pessoa pessoa = Pessoa(nome, peso, altura);
  calcularImc(pessoa);
}
