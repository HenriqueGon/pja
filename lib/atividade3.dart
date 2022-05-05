import 'dart:io';

void show() {
  print(calcularSalario(60, 1200, (salario) {
    
  }));
}

/*
Exercício 01 - implemente as funções
a) Função que solicite um número e realizar validações: (1) se é par; (2) maior que zero; (3) se é um número primo.
função "hospedeira" : solicitar um número
*/

bool validarNumero(Function acao) {
  print("Digite um número");
  var numero = int.parse(stdin.readLineSync()!);

  return acao(numero);
}

bool validarNumeroPar(int numero) {
  return numero % 2 == 0;
}

bool validarNumeroPositivo(int numero) {
  return numero > 0;
}

bool validarNumeroPrimo(int numero) {
  for (int j = 2; j < numero; j++) {
    if (numero % j == 0) return false;
  }
  return true;
}

/*
b) Função que solicite a data inicial e retorne quanto tempo passou em: (1) anos; (2) dias; e (3) horas.
*/

String calcularTempo() {
  print('Digite a data');
  var data = stdin.readLineSync();
  int ano =
      (DateTime.now().difference(DateTime.parse(data!)).inDays / 365).floor();

  int dias = DateTime.now().difference(DateTime.parse(data)).inDays;

  int horas = DateTime.now().difference(DateTime.parse(data)).inHours;

  return '$ano Anos $dias dias $horas horas';
}

/*
c) Função que solicite a quantidade de dias trabalhadas, valor que recebe por hora e calcule o salarário para: (1) auxiliar; (2) júnior; e (3) pleno.
Exercício 02 - para cada função "hospedeira", defina uma função anônima.
*/

double calcularSalario(
    int quantidadeDiasTrabalhadas, double valorHora, Function funcao) {
  return funcao(quantidadeDiasTrabalhadas, valorHora);
}

double salarioAuxiliar(int dias, double valorHora) {
  return 365 * dias / valorHora;
}

double salarioJunior(int dias, double valorHora) {
  return 365 * dias / valorHora + (valorHora * 0.15);
}

double salarioPleno(int dias, double valorHora) {
  return 365 * dias / valorHora + (valorHora * (valorHora * 0.35));
}
