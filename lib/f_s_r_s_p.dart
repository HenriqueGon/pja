import 'dart:io';

void show() {
  print('Funções sem retorno e sem parâmetro');

  calcularArrobaBoiGordo();
}

// calular a média e informar se está aprovado ou reprovado.
void verificarAprovacao() {
  print("Informe a primeira nota: ");
  var nota1 = double.parse(stdin.readLineSync()!);

  print("Informe a segunda nota: ");
  var nota2 = double.parse(stdin.readLineSync()!);

  var media = (nota1 + nota2) / 2;

  if (media >= 60) {
    print('Aprovado');
  } else {
    print('Reprovado');
  }
}

void descontar() {
  print("Informe o salario: ");
  var salario = double.parse(stdin.readLineSync()!);

  print("Informe o desconto: ");
  var desconto = double.parse(stdin.readLineSync()!);

  var saldo = .0;

  // Saldo com desconto em porcentagem
  // if (salario > 0) {
  //   saldo = salario - ((desconto / 100) * salario);

  //   print('Valor do salario com desconto $saldo');
  // } else {
  //   print('Sem saldo');
  // }

  // Saldo com desconto em real
  if (salario > desconto) {
    saldo = salario - desconto;

    print('Valor do salario com desconto $saldo');
  } else {
    print('Sem saldo');
  }
}

// Atividade II
// Pensar em um projeto único quanto maior o escopo melhor
// Fazer um exemplo seu
// Fazer comentários de tudo que entendeu

void calcularArrobaBoiGordo() {
  print('Digite o peso total do boi:');
  var pesoVivo = double.parse(stdin.readLineSync()!);

  double rendimentoCarcaca = pesoVivo * .5;

  double pesoBoi = rendimentoCarcaca / 15;

  print('O peso do boi em @ é $pesoBoi');
}
