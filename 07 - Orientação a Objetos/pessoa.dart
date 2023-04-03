///
/// Classes => objetos
/// Variaveis => atributos
/// Funções => métodos
/// A classe Pessoa é um objeto pessoa, com atributos e metodos.

class Pessoa {
  //atributos da classe Pessoa:
  String? nome;
  int? idade;

  void info() {
    print('Nome: $nome, idade: $idade');
  }
}