///
/// Classes => objetos
/// Variaveis => atributos
/// Funções => métodos
///


import 'dart:math';

class Conta {
  //colocando o nome como default
  String nome = 'Rafael';

  //Random => serve para gerar numeros e usando o nextInt gera numeros inteiros
  int numeroConta = Random().nextInt(10000 + 1);
  double saldo = 0;

  //Funções / métodos:

  double consultarSaldo() => this.saldo;

  void calcularSalario(double salario, double bonus, int faltas) {
    var salarioCalculado = this.saldo = (salario * desconto(faltas)) + bonus;
    print('Salário: $salarioCalculado, Bonus: $bonus, Faltas: $faltas');
  }

  double desconto(int faltas) => (faltas > 1)
      ? 0.8
      : (faltas == 1)
          ? 0.9
          : 0;

  void depositar(double valorDeposito) {
    // ou this.saldo += valorDeposito
    this.saldo = this.saldo + valorDeposito;
    print('Depósito: $valorDeposito, Saldo: $saldo');
  }

  void sacar(double valorSaque) {
    this.saldo = this.saldo - valorSaque;
    print('Saque: $valorSaque, Saldo: $saldo');
  }
}
