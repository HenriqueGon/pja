double calcularValorTerrenoAlqueire(
    double alqueires, int tamanhoAlqueire, double valor) {
  double tamanhoTerrenoMetros = 0;

  tamanhoTerrenoMetros = validaQuantidadeAlqueires(alqueires) *
      validaTamanhoAlqueires(tamanhoAlqueire);

  return (validaValor(valor: valor) / tamanhoTerrenoMetros) *
      tamanhoTerrenoMetros;
}

double validaQuantidadeAlqueires(double alqueires) {
  if (alqueires <= 0) {
    throw Exception(
        "A quantidade de alqueires não pode ser menor ou igual a 0");
  }

  return alqueires;
}

int validaTamanhoAlqueires(int tamanhoAlqueire) {
  if (tamanhoAlqueire <= 0) {
    throw Exception("O tamanho do alqueire não pode ser menor ou igual a 0");
  }

  return tamanhoAlqueire;
}

double validaValor({required double valor, String tipo = 'terreno'}) {
  if (valor <= 0) {
    throw Exception('O valor do $tipo não pode ser menor ou igual a 0');
  }

  return valor;
}

double validaPesoVivoBoi(double peso) {
  if (peso <= 0) {
    throw Exception("O peso vivo do boi não pode ser menor ou igual a 0");
  }

  return peso;
}

double calcularArrobaBoi({required double pesoVivo, double valor = 313}) {
  double rendimentoCarcaca = validaPesoVivoBoi(pesoVivo) * .5;

  double quantidadeArrobaBoi = rendimentoCarcaca / 15;

  if (DateTime.now().weekday == DateTime.friday) {
    valor += valor * .5;
  }

  if (quantidadeArrobaBoi > 40) {
    valor += valor * .15;
  }

  return quantidadeArrobaBoi * validaValor(valor: valor, tipo: 'arroba do boi');
}


void main() {
  // Paulista - 24200
  // Baiano - 96800
  // Mineiro - 48400

  print(calcularArrobaBoi(pesoVivo: 450));
}
