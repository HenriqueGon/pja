String verificarAprovacaoCompleto(int opcao, double nota1, double nota2) {
  if (opcao == 1) {
    return ((nota1 + nota2) / 2) >= 6 ? 'Aprovado' : 'Reprovado';
  } else if (opcao == 2) {
    double maior = nota1;

    if (maior < nota2) {
      maior = nota2;
    }

    return maior >= 6 ? 'Aprovado' : 'Reprovado';
  } else if (opcao == 3) {
    double menor = nota1;

    if (menor > nota2) {
      menor = nota2;
    }

    return menor >= 6 ? 'Aprovado' : 'Reprovado';
  } else {
    return 'Opção Inválida';
  }
}

String verificarAprovacao(int opcao, double nota1, double nota2) {
  if (opcao == 1) {
    return verificarPelaMedia(nota1, nota2);
  } else if (opcao == 2) {
    return verificarPelaMaiorNota(nota1, nota2);
  } else if (opcao == 3) {
    return verificarPelaMenorNota(nota1, nota2);
  } else {
    return 'Opção Inválida';
  }
}

String verificarPelaMedia(double nota1, double nota2) {
  return ((nota1 + nota2) / 2) >= 60 ? 'Aprovado' : 'Reprovado';
}

String verificarPelaMaiorNota(double nota1, double nota2) {
  double maior = nota1;

  if (maior < nota2) {
    maior = nota2;
  }

  return maior >= 60 ? 'Aprovado' : 'Reprovado';
}

String verificarPelaMenorNota(double nota1, double nota2) {
  double menor = nota1;

  if (menor > nota2) {
    menor = nota2;
  }

  return menor >= 60 ? 'Aprovado' : 'Reprovado';
}

double calcularSalario(Function funcao, double salario, double valor) {
  return funcao(salario, valor);
}

double calcularSalarioBonificado(double salario, double valor) {
  return salario + valor;
}

double calcularSalarioDescontado(double salario, double valor) {
  return salario - valor;
}

double calcularSalarioDescontadoPorc(double salario, double porcentagem) {
  // o - 10 no calculo da porcentagem é os 10% de encargo
  return salario - (salario * calcularPorcentagem(porcentagem - 10));
}

double calcularPorcentagem(valor) {
  return valor / 100;
}

void show() {
  print(calcularSalario(calcularSalarioBonificado, 500, 50));
}
