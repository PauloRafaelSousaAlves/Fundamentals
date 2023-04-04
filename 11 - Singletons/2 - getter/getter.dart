import 'pessoa.dart';
///
/// Singletons => É um padrão de projeto para que exista apenas uma instância da classe, ou seja, evitar criar novos objetos.
/// O construtor nomeado privado sem o construtor default impede de instanciar novas classes/objetos
///
/// Getter => a instancia privada (_) é acessada atraves do get.
///

void main() {
  print('11.2 - Singletons Getter');
  print('');

  print(PessoaGetter.instancia.nome);
  PessoaGetter.instancia.nome = 'Rafael';
  print(PessoaGetter.instancia.nome);

//Aqui estamos instanciado a classe para poder acessar o objeto
//Pode ser alocado novas instancias em variaveis, mas não podemos instanciar novas objetos
  var pessoa1 = PessoaGetter.instancia;
  var pessoa2 = PessoaGetter.instancia;

  pessoa1.nome = 'Lord';
  print(PessoaGetter.instancia.nome);

  pessoa2.nome = 'Lory';
  print(PessoaGetter.instancia.nome);
  print(identical(pessoa1, pessoa2));
  //comparando o objeto com o Singleton
  print(pessoa2 == PessoaGetter.instancia);
}
