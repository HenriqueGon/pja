import 'dart:io';

void show() {
  print('Função com retorno e com parâmetro');

  // print(descontar(1200, 200));
  print(calcularArrobaBoiGordo(450));
}

String verificarAprovacao(double nota1, double nota2) {
  var media = (nota1 + nota2) / 2;

  return media >= 60 ? 'Aprovado' : 'Reprovado';
}

double descontar(double salario, double desconto) {
  var saldo = .0;

  // Saldo com desconto em porcentagem
  // if (salario > 0) {
  //   saldo = salario - ((desconto / 100) * salario);
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

calcularArrobaBoiGordo(double pesoVivo) {
  double rendimentoCarcaca = pesoVivo * .5;

  double pesoBoi = rendimentoCarcaca / 15;

  return pesoBoi;
}
