import 'pessoa.dart';

///
/// Singletons => É um padrão de projeto para que exista apenas uma instância da classe, ou seja, evitar criar novos objetos.
/// O construtor nomeado privado sem o construtor default impede de instanciar novas classes/objetos
///
/// Static => a instancia pode ser acessada diretamente.
///

void main() {
  print('11.1 - Singletons Static');
  print('');

  print(PessoaStatic.instancia.nome);
  PessoaStatic.instancia.nome = 'Rafael';
  print(PessoaStatic.instancia.nome);

//Aqui estamos instanciado a classe para poder acessar o objeto
//Pode ser alocado novas instancias em variaveis, mas não podemos instanciar novas objetos
  var pessoa1 = PessoaStatic.instancia;
  var pessoa2 = PessoaStatic.instancia;

  pessoa1.nome = 'Erik';
  print(PessoaStatic.instancia.nome);

  pessoa2.nome = 'Lory';
  print(PessoaStatic.instancia.nome);
  print(identical(pessoa1, pessoa2));
  //comparando o objeto com o Singleton
  print(pessoa2 == PessoaStatic.instancia);
}
