import 'dart:convert';
import 'dart:io';

import 'package:calculadora_imc/models/classes/resultado.dart';

String lerString() {
  return stdin.readLineSync(encoding: utf8) ?? "";
}

String lerStringComTexto(String texto) {
  print(texto);
  return lerString();
}

double lerDouble() {
  var value = lerString();
  return double.parse(value);
}

double lerDoubleComTexto(String texto) {
  print(texto);
  return lerDouble();
}

calcularImc(pessoa) {
  double imc = pessoa.getPeso() / (pessoa.getAltura() * pessoa.getAltura());
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
      break;
  }

  var resultado =
      Resultado(pessoa.getNome(), pessoa.getPeso(), pessoa.getAltura(), imc);

  pessoa.setImc(imc);

  print("Valores informados: ${pessoa.getPeso()}kg, ${pessoa.getAltura()}m.");
  print("${pessoa.getNome()}, seu IMC é: ${pessoa.getImc()}.");
  print("Sua condição é: $status.");

  if (pessoa.getImc() < 30) {
    print("Procure um nutricionista.");
  }

  if (pessoa.getImc() > 30) {
    print("Procure um médico!");
  }
}
