import 'dart:io';

void show() {
  print('Função com retorno e sem parâmetro');

  // print(descontar());
  print(calcularArrobaBoiGordo());
}

String verificarAprovacao() {
  String status = '';

  print("Informe a primeira nota: ");
  var nota1 = double.parse(stdin.readLineSync()!);

  print("Informe a segunda nota: ");
  var nota2 = double.parse(stdin.readLineSync()!);

  var media = (nota1 + nota2) / 2;

  if (media >= 60) {
    status = 'Aprovado';
  } else {
    status = 'Reprovado';
  }

  return status;
}

double descontar() {
  print("Informe o salario: ");
  var salario = double.parse(stdin.readLineSync()!);

  print("Informe o desconto: ");
  var desconto = double.parse(stdin.readLineSync()!);

  double saldo = .0;

  // Saldo com desconto em porcentagem
  // if (salario > 0) {
  //   saldo = salario - ((desconto / 100) * salario);
  // } else {
  //   print('Sem saldo');
  //   exit(1);
  // }

  // Saldo com desconto em real
  if (salario > desconto) {
    saldo = salario - desconto;
  } else {
    print('Sem saldo');
    exit(1);
  }

  return saldo;
}

calcularArrobaBoiGordo() {
  print('Digite o peso total do boi:');
  var pesoVivo = double.parse(stdin.readLineSync()!);

  double rendimentoCarcaca = pesoVivo * .5;

  double pesoBoi = rendimentoCarcaca / 15;

  return pesoBoi;
}
