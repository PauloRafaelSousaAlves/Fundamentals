import 'dart:math';

void main() {
  print('16.6.0 - List manipulando objetos');
  print('');

  //Manipulando o Objeto a partir destes exemplos:

  Pessoa p1 = Pessoa('Rafael', 'Mazzoco', identidade: 12345678);
  Pessoa p2 = Pessoa('Erik', 'Coelho', identidade: 87654321);

  List<Pessoa> pessoas = [p1, p2];
  pessoas.add(Pessoa('Lory', 'Mazzoco'));

//EXEMPLO FOR
  for (var i = 0; i < pessoas.length; i++) {
    print(
        'for: ${pessoas[i].nome} ${pessoas[i].sobrenome}, identidade: ${pessoas[i].identidade}');
  }
  print('');

//EXEMPLO FOR IN
  for (var pessoa in pessoas) {
    print(
        'For in: ${pessoa.nome} ${pessoa.sobrenome}, identidade: ${pessoa.identidade}');
  }

  print('');

//EXEMPLO FOREACH
  pessoas.forEach((element) => print(
      'ForEach: ${element.nome} ${element.sobrenome} identidade: ${element.identidade}'));
}

///CLASSE PESSOA

class Pessoa {
  String? nome;
  String? sobrenome;
  int? _identidade;

  Pessoa(this.nome, this.sobrenome, {int? identidade}) {
    this._identidade =
        (identidade == null) ? Random().nextInt(999999999) : identidade;
  }

  int? get identidade => _identidade;
}
