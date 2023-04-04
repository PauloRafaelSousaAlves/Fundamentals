//Desta forma estamos declarando o parametro, para depois chamar o this. , no qual voce transfere o parametro para o atributo da classe.
class Animal {
  String? nome;
  String? raca;
  int? idade;

  Animal(String nome, [String? raca, int idade = 0]) {
    this.nome = nome;
    this.raca = raca;
    this.idade = idade;
    print('Construtor com parametros default! ${this.toString()}');
  }
}