import 'conta.dart';
import 'usuario.dart';

///
///Encapsuladores são usados para proteger os atributos e variaveis
///Get é usado para acessar e o Set é usado para alterar
///Atributos ou variaveis com underline se tornam privados para aquela classe
///

void main() {
  print('09.0 - Encapsuladores');
  print('');

  var usuario = Usuario('Rafael', 'abc123');

  //Para utilizar o SET usa-se o atributo passando um novo valor
  usuario
    ..senha = '123456'
    ..alteracao = true
    ..senha = '123456';

  //Para utilizar o GET estamos usando o atributo sem passar nenhum valor
  print('Nome: ${usuario.nome}, senha: ${usuario.senha}\n');

  var conta = Conta('Rafael Mazzoco');
  conta
    ..deposito = 900.00
    ..deposito = 450.0
    ..saque = 550
    ..saque = 500;

  print('');

  conta
    ..limite = 700
    ..alterarLimite = true
    ..limite = 1000
    ..alterarLimite = false;

  print('');

  conta
    ..saque = 950
    ..saque = 850;
  print('${conta.informacao}\n');

  print('');

  Conta contaVip = Conta.vip('Erik', limite: 12500);
  contaVip
    ..deposito = 15000
    ..saque = 15000
    ..limite = 15000
    ..saque = 15000;
    print('${contaVip.informacao}\n');
}
