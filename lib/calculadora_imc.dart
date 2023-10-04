import 'package:calculadora_imc/models/functions/utils.dart' as utils;

void execute() {
  print("Calculadora IMC");

  String nome = utils.lerStringComTexto("Digite seu nome...");
  double peso = utils.lerDoubleComTexto("Digite seu peso em kg...");
  double altura = utils.lerDoubleComTexto("Digite sua altura em metros...");

  print("$nome, ${peso}kg, ${altura}m.");

  double imc = peso / (altura * altura);
  String status = "";

  switch (imc) {
    case < 16:
      status = "Magreza grave";
      break;
    case > 16 && < 17:
      status = "Magreza moderada";
      break;
    case > 17 && < 18.5:
      status = "Magreza leve";
      break;
    case > 18.5 && < 25:
      status = "Saudável";
      break;
    case > 25 && < 30:
      status = "Sobrepeso";
      break;
    case > 30 && < 35:
      status = "Obesidade grau 1";
      break;
    case > 35 && < 40:
      status = "Obesidade grau 2 (Severa)";
      break;
    case >= 40:
      status = "Obesidade grau 3 (Mórbida)";
      break;
    default:
      status = "";
  }

  print("Seu IMC é: $imc.");
  print("Status: $status.");
}
