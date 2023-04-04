//CLASSE ABSTRATA

import 'dart:ffi';

abstract class Cidadao {
  String? nome;
  Cidadao(this.nome);

  void objetivosPessoais();

  void direitosDeveres() {
    print('Todo cidadão tem direitos e deveres');
  }
}

//INTERFACE

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

//MIXINS

//usando o ON esta restringindo o uso para as classes que herdam de Cidadao

mixin Elegivel on Cidadao {
  bool elegivel = false;

  void prestacaoContas();
}

abstract class Conta {
  double? _saldo;
  double salario = 33000;

  get saldo => this._saldo;
  set depositar(double valor) => this._saldo = valor;

  bool declaracaoRenda() => saldo / 12 < salario;
}

//CLASSE CONCRETA

//Quando implementamos uma interface, obrigatoriamente devemos escrever os atributos e metodos
//Pode ser colocado mais que uma interface, usamos a virgula para puxar outras interfaces.
//Sintaxe para usar o Mixin é o (with).

class Candidato extends Cidadao
    with Elegivel, Conta
    implements Postagem, Presidenciavel {
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

  @override
  void prestacaoContas() {
    elegivel = super.declaracaoRenda();
    if (elegivel) {
      print(
          'Candidato $nome passou na prestação de contas! \n Autorizado a concorrer nas eleições');
    } else {
      print('Candidato $nome foi barrado na prestação de contas. \n Saldo: $saldo excede a renda declarada para Presidente!');
    }
  }
}
