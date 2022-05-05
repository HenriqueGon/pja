void main() {
  var lista = [10, 5, 3, 7];

  // Atividade II → Realize as atividades abaixo

  //Exercício 1 - faça a chamada do método adicionarSalario validando se o valor é positivo.
  adicionarSalario(500, 300, ePositivo);

  //Exercício 2 - refaça o exe anterior, convertendo a named function em anonymous function.
  adicionarSalario(500, 400, (valor) {
    return ePositivo(valor);
  });

  //Exercício 3  - refaça o exe anterior, utilizando a arrow function.
  adicionarSalario(500, 400, ePositivo);

  //Exercício 4  - refaça os exe's a, b e c, porém validando se o valor é menor do que o salário.

  //Exercício 5  - refaça o exe c porém fazendo uma validação sua.
  adicionarSalario(600, 200, (valor) => valor % 2 == 0);

  //Exercício 6 - faça 2 exemplos do uso de funções anônimas utilizando a biblioteca do dart.
  lista.forEach((n) {
    if (n % 2 == 0) {
      print('O valor $n é par');
    } else {
      print('O valor $n é impar');
    }
  });

  var newList = lista.map((n) {
    if (n % 2 == 0) {
      n = n * 10;
    }

    return n;
  });

  /*
  Exercício 6 - Conseguiu entender:
    - O contexto em que é útil utilizar funções anônimas?
    R: Quando não é necessário a criação de uma função para executar determinada tarefa
    
    - Os requisitos necessários para usar funções anônimas? 
    R: Quando não se tem certeza de como será feita determinada tarefa, por exemplo: cada um pode implementar uma verificação diferente,
    então quando não sabemos quais são, é deixada para cada pessoa implementar.

    - diferença entre função nomeada e anônimas?
    R: função anônima é uma função que não tem nome, e também não é possível reutilizar ela em várias partes do código, já a função nomeada é a que recebe um nome
    e pode ser reutilizada diversas vezes.

    - diferença entre anonymous function e arrow function?
    R: As funções anonimas possuem um bloco de codigo, podendo possuir zero ou mais parametros, 
    já a arrow function nos permite criar uma função simples que consiste em uma única expressão.
    
    Em que caso devemos utilizar Arrow Function? O que devemos considerar?
  */
}

void adicionarSalario(
    double salario, double valor, Function(double valor) validacao) {
  final eValido = validacao(valor);
  if (eValido) {
    final total = salario + valor;
    print(total);
  }
}

bool ePositivo(double numero) {
  if (numero > 0) {
    return true;
  } else {
    return false;
  }
}
