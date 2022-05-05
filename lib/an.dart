// função responsável por calcular a quantidade de metros baseada na quantidade
// de alqueires passada e o tamanho de cada alqueire, que varia em cada estado.
double calcularValorTerrenoAlqueire(
    double alqueires, int tamanhoAlqueire, double valor, Function acao) {
  double tamanhoTerrenoMetros = alqueires * tamanhoAlqueire;
  double quantidade = acao(tamanhoTerrenoMetros);

  return valor / quantidade;
}

double quantidadePessoasTerreno(double tamanhoTerreno) {
  return tamanhoTerreno * 9;
}

double quantidadeCamposFutebol(double tamanhoTerreno) {
  return tamanhoTerreno / 10800;
}

double valorTerreno(double valor, double tamanhoTerreno) {
  return valor / tamanhoTerreno;
}

void show() {
  // Paulista - 24200
  // Baiano - 96800
  // Mineiro - 48400

  print(calcularValorTerrenoAlqueire(
      5.5, 24200, 500000, quantidadeCamposFutebol));
}
