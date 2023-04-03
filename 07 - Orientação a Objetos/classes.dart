import 'conta.dart';
import 'pessoa.dart';
import 'usuario.dart';

///
/// Classes => objetos
/// Variaveis => atributos
/// Funções => métodos
///

void main() {
  print('07.0 - Classes/Objetos');
  print('');

  ///Aqui estamos instanciado a classe:

  Pessoa pessoa1 = new Pessoa();
  pessoa1.nome = 'Rafael';
  pessoa1.idade = 28;
  print('Nome: ${pessoa1.nome}, idade: ${pessoa1.idade}');

  Pessoa pessoa2 = Pessoa();
  pessoa2.nome = 'Erik';
  pessoa2.idade = 25;
  print('Nome: ${pessoa2.nome}, idade: ${pessoa2.idade}');
  print('');

  ///Nos exemplos acima possuimos dois objetos diferentes, utilizando o mesmo modelo de classe.

  Usuario usuario = Usuario();
  usuario.usuario = 'fma@gmail.com';
  usuario.senha = '123456';
  usuario.autenticar();
  print('');

  Conta conta = Conta();
  print(
      'Nome: ${conta.nome}, Nº Conta: ${conta.numeroConta}, Saldo: ${conta.consultarSaldo()}');
  conta.calcularSalario(950.00, 150.00, 2);
  conta.depositar(185.00);
  conta.sacar(50);
}



