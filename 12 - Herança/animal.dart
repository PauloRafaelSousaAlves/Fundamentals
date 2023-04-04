//Classe Pai:

// ignore_for_file: unnecessary_null_comparison

class Animal {
  String? idade;
  bool? docil;

  Animal(this.idade, {this.docil});

  void dormir() {
    print('Dorme como um animal!');
  }
}

//Classe que esta recebendo a Herança:
class Mamifero extends Animal {
  String? sexo;

//Sempre que herdar deve se passar o construtor super com os parametros da classe pai na ordem
  Mamifero(this.sexo, idade, docil) : super(idade, docil: docil);

  void alimentar() {
    print('Se alimenta como um mamifero');
  }
}

class Cao extends Mamifero {
  String? nome;
  String? raca;

  Cao(this.nome, this.raca, String sexo, {String? idade, bool? docil = false})
      : super(sexo, idade, docil) {
    this.idade = (idade == null) ? 'indefinida' : idade;
    this.sexo = (sexo == null) ? 'indefinido' : sexo;
  }

  void acao() {
    print('Late como um cão!');
  }
}
