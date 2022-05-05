import 'package:dart_application/ver_aprovacao/verificar_aprovacao.dart'
    as aprovacao;

String show() {
  var nota1 = 7.0;
  var nota2 = 8.0;
  var media = 7.0;
  var quantidadePresenca = 70;
  var cargaHorariaDisciplina = 80;
  var percentualMinimoPresenca = 75.0;
  return aprovacao.verificarAprovacao(nota1, nota2, media, quantidadePresenca,
      cargaHorariaDisciplina, percentualMinimoPresenca);
}

/*
Esta função tem o objetivo de verificar a aprovação pela nota e presença 
Considerando este cenário, quais são os possíveis contextos de teste? 
Para cada cenário, os resultados gerados estão coerentes? 
Registros os erros encontrados e faça as alterações necessárias.
*/

/*
Contextos de testes:

- Aprovado por nota: Coerente
- Aprovado por nota e presença: Incoerente 
- Reprovado por nota: Incoerente
- Reprovado por presença: Coerente
- Reprovado por nota e presença: Incoerente

ERRO 1:
Quando vai ser verificado a aprovação pela nota, foi esquecido de passar o valor
da média que é recebido por parâmetro para a função verificarAprovacaoNota.

ERRO 2:
Ao calcular a média das notas dentro das funções calcularNota1 e calcularNota2
os valores estavam sendo zerados. E na função calcularNota2 o valor que estava
sendo passado por parâmetro era a nota1 em vez da nota2.

ERRO 3:
Quando reprovado por presença o resultado de retorno estava reprovado por nota.

ERRO 4:
Quando vai ser verificado a aprovação pela presença, estava sendo passado o 
valor 6, em vez do valor que vinha por parâmetro da função anterior que era o
percentualMinimoPresenca
*/

