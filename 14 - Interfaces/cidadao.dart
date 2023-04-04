abstract class Cidadao {
  String? nome;
  Cidadao(this.nome);

  void objetivosPessoais();

  void direitosDeveres() {
    print('Todo cidadão tem direitos e deveres');
  }
}

abstract class Presidenciavel {
  String? partido;
  String? ideologia;

  void ideologiaPolitica();
}

class Postagem {
  String? postagem;

  void escreverPostagem() {
    print('');
  }
}

//Quando implementamos uma interface, obrigatoriamente devemos escrever os atributos e metodos
//Pode ser colocado mais que uma interface, usamos a virgula para puxar outras interfaces.
class Candidato extends Cidadao implements Postagem, Presidenciavel {
  String? objetivo;
  String? postagem;
  String? partido;
  String? ideologia;
  Candidato(String nome, {this.ideologia, this.partido}) : super(nome) {
    direitosDeveres();
  }

  @override
  void objetivosPessoais() {
    print('$nome tem o objetivo de $objetivo');
  }

  @override
  void escreverPostagem() {
    print('Postagem do $nome no facebook: $postagem');
  }

  @override
  void ideologiaPolitica() {
    print(
        '$nome é candidato com ideologia de $ideologia pelo partido $partido');
  }
}
