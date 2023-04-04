// ignore_for_file: unnecessary_null_comparison

//Classe Pai abstrata:
//com a sintaxe abstrata se torna uma classe modelo

abstract class Animal {
  String? idade;
  bool? docil;
  bool? coluna;

  Animal.vertebrados(this.idade, {this.docil}) {
    this.coluna = true;
  }
  Animal.invertebrados(this.idade, {this.docil}) {
    this.coluna = false;
  }

  void dormir() {
    print('Dorme como um animal!');
  }
}

//Classe que esta recebendo a Herança:
abstract class Mamifero extends Animal {
  String? sexo;
  String? desenvolvimento;

  Mamifero.placentarios(this.sexo, idade, {docil})
      : super.vertebrados(idade, docil: docil) {
    this.desenvolvimento = 'Placentarios';
  }
  Mamifero.marsupiais(this.sexo, idade, {docil})
      : super.vertebrados(idade, docil: docil) {
    this.desenvolvimento = 'Placentarios + bolsa externa';
  }
  Mamifero.monotremados(this.sexo, idade, {docil})
      : super.vertebrados(idade, docil: docil) {
    this.desenvolvimento = 'Ovo';
  }

  void alimentar() {
    print('Se alimenta');
    print('como um');
  }

//metodos sem escopo em classes abstratas, devem ser sobrescritos em classes herdeiras
  void reproduzir();
}

class Cao extends Mamifero {
  String? nome;
  String? raca;

  Cao.domestico(this.nome, this.raca, String sexo,
      {String idade = 'indefinida', bool docil = true})
      : super.placentarios(sexo, idade, docil: docil);

  Cao.selvagem(this.nome, this.raca, String sexo,
      {String idade = 'indefinida', bool docil = false})
      : super.placentarios(sexo, idade, docil: docil);

  @override // para sobrescrever o metodo da classe pai
  void dormir() {
    print('Dorme como um cão!');
  }

  @override
  void alimentar() {
    super.alimentar(); //Implementa o escopo do metodo herdado
    print('cão');
  }

  @override
  void reproduzir() {
    print('Reproduz como um cão!');
  }

  void acao() {
    print('Late como um cão!');
  }
}
