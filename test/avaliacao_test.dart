import 'package:test/test.dart';

import 'package:dart_application/avaliacao.dart' as av;

void main() {
  group('Teste de calculo do valor do terreno por alqueire', () {
    test('Valor do terreno com valores positivos', () {
      expect(av.calcularValorTerrenoAlqueire(5.5, 24200, 5000000), 5000000.0);
    });

    test('Exceção de valor negativo', () {
      expect(() => av.calcularValorTerrenoAlqueire(5.5, 24200, -2),
          throwsException);
    });

    test('Exceção de quantidade de alqueires negativo', () {
      expect(() => av.calcularValorTerrenoAlqueire(-3, 24200, 500000),
          throwsException);
    });

    test('Exceção de tamanho do alqueire negativo', () {
      expect(() => av.calcularValorTerrenoAlqueire(10, -3, 500000),
          throwsException);
    });
  });

  group('Teste de calculo do arroba do boi', () {
    test('Peso vivo com valor positivo', () {
      expect(av.calcularArrobaBoi(pesoVivo: 400), 4173.333333333334);
    });

    test('Peso vivo com valor positivo e passando o valor do arroba', () {
      expect(
          av.calcularArrobaBoi(pesoVivo: 400, valor: 400), 5333.333333333334);
    });

    test('Exceção de peso vivo negativo', () {
      expect(() => av.calcularArrobaBoi(pesoVivo: -5), throwsException);
    });

    test('Exceção valor negativo', () {
      expect(() => av.calcularArrobaBoi(pesoVivo: 400, valor: -10),
          throwsException);
    });
  });
}
