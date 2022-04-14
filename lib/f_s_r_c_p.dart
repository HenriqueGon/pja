// import 'dart:io';

void show() {
  print('Funções sem retorno e com parâmetro');

  // print("Informe a primeira nota: ");
  // var nota1 = double.parse(stdin.readLineSync()!);

  // print("Informe a segunda nota: ");
  // var nota2 = double.parse(stdin.readLineSync()!);

  // verificarAprovacao(nota1, nota2);

  // descontar(1200, 200);

  calcularArrobaBoiGordo(450);
}

// caclular a média e informar se está aprovado ou reprovado.
void verificarAprovacao(double nota1, double nota2) {
  var media = (nota1 + nota2) / 2;

  if (media >= 60) {
    print('Aprovado');
  } else {
    print('Reprovado');
  }
}

void descontar(double salario, double desconto) {
  var saldo = .0;

  // Saldo com desconto em porcentagem
  // if (salario > 0) {
  //   saldo = salario - ((desconto / 100) * salario);
  // }

  // Saldo com desconto em real
  if (salario > desconto) {
    saldo = salario - desconto;

    print('Valor do salario com desconto $saldo');
  } else {
    print('Sem saldo');
  }
}

void calcularArrobaBoiGordo(double pesoVivo) {
  double rendimentoCarcaca = pesoVivo * .5;

  double pesoBoi = rendimentoCarcaca / 15;

  print('O peso do boi em @ é $pesoBoi');
}
