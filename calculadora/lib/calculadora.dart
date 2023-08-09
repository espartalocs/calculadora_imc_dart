import 'dart:io';

void calculaIMC() {
  double peso, altura;
  do {
    print("Digíte seu Peso");
    String? input = stdin.readLineSync();
    peso = double.parse(input!.replaceAll(',', '.'));
  } while (peso.isNaN);
  print("Digíte sua altura");
  do {
    String? input = stdin.readLineSync();
    altura = double.parse(input!.replaceAll(',', '.'));
  } while (altura.isNaN);

  print(peso);
  print(altura);
  double imc = double.parse(peso.toString()) + (double.parse(altura.toString()) * double.parse(altura.toString()));
  print(imc);
  if (imc < 18.5) {
    print('MAGREZA');
  } else if (imc >= 18.5 && imc <= 24.9) {
    print('NORMAL');
  } else if (imc >= 25.0 && imc <= 29.9) {
    print('SOBREPESO I');
  } else if (imc >= 30.0 && imc <= 39.9) {
    print('OBESIDADE II');
  } else {
    print('OBESIDADE GRAVE III');
  }
}
