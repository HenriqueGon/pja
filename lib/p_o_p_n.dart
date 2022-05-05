void show() {
  print(verificarAprovadao(7, 7));
}

String verificarAprovadao(double nota1, double nota2,
    [double mediaAprovacao = 60]) {
  var media = (nota1 + nota2) / 2;

  return media >= mediaAprovacao ? 'Aprovado' : 'Reprovado';
}

String verificarAprovadaoParamNomeado(
    {required double nota1,
    required double nota2,
    double mediaAprovacao = 60}) {
  var media = (nota1 + nota2) / 2;

  return media >= mediaAprovacao ? 'Aprovado' : 'Reprovado';
}

double calcularValorTerrenoAlqueire(double valor,
    [double tamanhoTerrenoAlqueire = 24200]) {
  // Paulista - 24200
  // Baiano - 96800
  // Mineiro - 48400

  return valor / tamanhoTerrenoAlqueire;
}

double calcularValorTerrenoAlqueireNomeadead(
    {required double valor, double tamanhoTerrenoAlqueire = 24200}) {
  // Paulista - 24200
  // Baiano - 96800
  // Mineiro - 48400

  return valor / tamanhoTerrenoAlqueire;
}
