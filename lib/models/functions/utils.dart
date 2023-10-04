import 'dart:convert';
import 'dart:io';

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
