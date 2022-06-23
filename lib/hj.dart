// class Pessoa {
//   late int anoNascimento;
//   late int idade;

//   Pessoa({required int anoNascimento}) {
//     this.setAnoNascimento(anoNascimento);
//   }

//   int getAnoNascimento() {
//     return this.anoNascimento;
//   }

//   void setAnoNascimento(int anoNascimento) {
//     if (anoNascimento < 0) {
//       throw Exception("Ano inválido!");
//     }

//     this.anoNascimento = anoNascimento;

//     this.setIdade(DateTime.now().year - anoNascimento);
//   }

//   int getIdade() {
//     return this.idade;
//   }

//   void setIdade(int idade) {
//     this.idade = idade;
//   }
// }

// class Aluno extends Pessoa {
//   final String registroAcademico;

//   Aluno({required int anoNascimento, required this.registroAcademico})
//       : super(anoNascimento: anoNascimento);

//   String getRegistroAcademico() {
//     return this.registroAcademico;
//   }
// }

// 1)Para atribuir um valor em um atributo, qual a diferença em: (i) atribuir um
// valor no atributo na  definição da classe; e (ii) solicitar o seu valor via
// parâmetro do construtor?
// R: Definindo o valor de um atributo diretamente na classe, toda vez que for criada uma instância
// da mesma, todos os objetos terão por padrão aquele valor. Já quando o valor é
// passado pelo parâmetro do construtor é possível alterar o valor do atributo,
// assim cada objeto podera ter um valor diferente.

// 2)O que é para que ser construtor? Qual código pode-se definir nele?
// R: O construtor é responsável por atribuir os valores para os atributos da classe
// no momento em que é feita uma instância.

// class Teste {
//   String nome;
//   Teste({required this.nome});
// }

// 3)Para que serve "final"? Em que caso utilizamos? Para coletar dados, qual a vantagem e desvantagem?
// R: final não permite que o valor seja alterado durante a execução do programa.
// Muito utilizada quando não queremos que o valor seja alterado.

// 4) Crie e instancie as classes abaixo. Para cada atributo, atribua valores, altere os valores e imprima-os.
//     * → obrigatório
//     = valor (valor padrão)
//     ? pode ser nulo
//   Caso não esteja implícito, de acordo com o contexto, defina se os atributos podem ser nulos ou não e se podem ser privado ou não.
//   a) Bola{cor=branco,tamanho=7, categoria?}

import 'dart:math';

class Bola {
  String cor;
  int tamanho;
  String? categoria;

  Bola([this.cor = 'branco', this.tamanho = 7, this.categoria]);

  @override
  String toString() {
    return "cor: $cor \ntamanho: $tamanho \ncategoria: $categoria";
  }
}

//   b) Professor{ id, nome, cpf, e-mail} >> inicialize todos os atributos no contrutor

class Professor {
  static int _idCounter = 0;
  late int _id;
  String nome;
  String cpf;
  String email;

  Professor(this.nome, this.cpf, this.email) {
    _id = ++Professor._idCounter;
  }

  int get id => _id;
}

//   c) Aluno{ ra, nome, cpf, telefone} >> com todos os atributos final, inicialize todos os atributos no contrutor utilizando parâmetros nomeados

class Aluno {
  final String ra;
  final String nome;
  final String cpf;
  final String telefone;

  Aluno(
      {required this.ra,
      required this.nome,
      required this.cpf,
      required this.telefone});
}

//   d) Peça{código, nome, descrição, preço de custo}
//     → get nome e descição, get preço de venda (30% sobre o preço de custo)
//     → set código - somente números positivos
//     → set preço de custo - somente valore positivos

void main() {
  Peca peca = Peca(1, 'teste', 'teste', 30.4);

  print(peca.precoVenda);
}

class Peca {
  int codigo;
  String nome;
  String descricao;
  double precoCusto;

  Peca(this.codigo, this.nome, this.descricao, this.precoCusto);

  void set cod(int codigo) {
    this.codigo = codigo;
  }

  double get precoVenda {
    return this.precoCusto + this.precoCusto * .3;
  }

  void set preco(double preco) {
    if (preco < 0) {
      throw Exception('O preço não pode ser menor que 0');
    }

    this.precoCusto = preco;
  }

  @override
  String toString() {
    return "Nome: $nome \nDescrição: $descricao";
  }
}
//   e) Carro{nome, ano fabricação}
//     → get tempo de uso, get nome e ano fabricação
//     → set ano fabricação - somente ano positivo e coerente

class Carro {
  String nome;
  int ano;

  Carro(this.nome, this.ano);

  int get tempoUso {
    return DateTime.now().year - this.ano;
  }

  void set anoFabricacao(int ano) {
    if (ano < 1886 || ano > 2022) {
      throw Exception('O ano de fabricação deve ser valido!');
    }

    this.ano = ano;
  }
}
//   f) Cidade{nome,Estado{nome,sigla}}

class Estado {
  String nome;
  String sigla;

  Estado(this.nome, this.sigla);
}

class Cidade {
  String nome;
  Estado estado;

  Cidade(this.nome, this.estado);
}

//   g) Funcionario{nome, cpf, telefone, Cidade{nome,Estado{nome,sigla}}}

class Funcionario {
  String nome;
  String cpf;
  String telefone;
  Cidade cidade;

  Funcionario(this.nome, this.cpf, this.telefone, this.cidade);
}

//   h) Peca{nome,Tipo{nome,Categoria{nome, descirção}},Unidade de Medida{sigla, descricao}, Fabricante{nome,Cidade{nome,Estado{nome,sigla}} }}

class UnidadeMedida {
  String sigle;
  String descricao;

  UnidadeMedida({
    required this.sigle,
    required this.descricao,
  });
}

class Categoria {
  String nome;
  String descricao;

  Categoria({
    required this.nome,
    required this.descricao,
  });
}

class Tipo {
  String nome;
  Categoria categoria;

  Tipo({
    required this.nome,
    required this.categoria,
  });
}

class Peca2 {
  String nome;
  Tipo tipo;

  Peca2({
    required this.nome,
    required this.tipo,
  });
}

class Fabricante {
  String nome;
  Cidade cidade;

  Fabricante({
    required this.nome,
    required this.cidade,
  });
}

//   i) Faça 4 classes do seu estudo de caso utilizando tudo que aprendeu hoje.

void insertionSort({required var arr}) {
  for (var i = 0; i < arr.length; i++) {
    var key = arr[i];
    var j = i - 1;

    while (j >= 0 && arr[j] > key) {
      arr[j + 1] = arr[j];
      j--;
    }

    arr[j + 1] = key;
  }
  return arr;
}

void selectionSort({required var arr}) {
  for (var i = 0; i < arr.length - 1; i++) {
    var min_index = i;

    for (var j = i + 1; j < arr.length; j++) {
      if (arr[j] < arr[min_index]) {
        min_index = j;
      }
    }

    var temp = arr[i];
    arr[i] = arr[min_index];
    arr[min_index] = temp;
  }
}

void bubbleSort({required var arr}) {
  for (var i = 0; i < arr.length - 1; i++) {
    for (var j = 0; j < arr.length - i - 1; j++) {
      if (arr[j] > arr[j + 1]) {
        var temp = arr[j];
        arr[j] = arr[j + 1];
        arr[j + 1] = temp;
      }
    }
  }
}

void sortArray(var arr, Function sort, [bool countTime = false]) {
  final stopwatch = Stopwatch();
  countTime ? stopwatch.start() : null;

  if (validateArrayLength(arr) > 1) {
    sort(arr: arr);
  }

  print(stopwatch.elapsed);
}

int validateArrayLength(var arr) {
  if (arr.length < 2) {
    throw Exception('Não é possível ordenar com menos de 2 valores');
  }

  return arr.length;
}

int generateRandomIntegerNumber() {
  return Random().nextInt(10000);
}

List<int> generateAndFillList() {
  var list = List<int>.filled(Random().nextInt(10), 0);

  for (var i = 0; i < list.length; i++) {
    list[i] = (generateRandomIntegerNumber());
  }

  return list;
}

