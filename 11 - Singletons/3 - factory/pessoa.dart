import 'dart:math';

class PessoaFactory {
  static final PessoaFactory instancia =
      PessoaFactory._construtorNomeado('indefinido');
  String? nome;

//o construtor como factory é capaz de retornar atributos/variaveis
//ele é o primeiro construtor a ser instanciado quando iniciamos a classe
//o construtor factory é um contrutor default/padrão

  factory PessoaFactory() => instancia;

  PessoaFactory._construtorNomeado(this.nome) {
    //configurações iniciais
  }
}

class PessoaInstancia {
  static PessoaInstancia? _instancia;
  String? nome;
  final int? _identidade;

//Esta sendo sempre responsavel por retornar a instancia original
  factory PessoaInstancia({String nome = 'indefinido', int? identidade}) {
    identidade =
        (identidade == null) ? Random().nextInt(99999999 + 1) : identidade;
    return _instancia ??= PessoaInstancia._construtorNomeado(nome, identidade);
  }

  PessoaInstancia._construtorNomeado(this.nome, this._identidade) {}

  get identidade => _identidade;
}
