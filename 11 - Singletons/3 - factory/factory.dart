import 'pessoa.dart';

///
/// Singletons => É um padrão de projeto para que exista apenas uma instância da classe, ou seja, evitar criar novos objetos.
/// O construtor nomeado privado sem o construtor default impede de instanciar novas classes/objetos
///
///Factory => Construtor factory é usado para retornar/manter a instancia original
///Construtor factory é capaz de retornar valores
///

singletonFactory() {
  print('11.3 - Singletons Factory');
  print('');

  var pessoa1 = PessoaFactory();
  print(pessoa1.nome);
  pessoa1.nome = 'Rafael';
  //estamos efetuando o print do atributo nome atraves do Singleton
  print(PessoaFactory.instancia.nome);
  PessoaFactory.instancia.nome = 'Lord';
  print(pessoa1.nome);

  var pessoa2 = PessoaFactory();
  pessoa2.nome = 'Lory';
  print(PessoaFactory.instancia.nome);
  print(identical(pessoa1, PessoaFactory.instancia));
  //comparando o objeto com o Singleton
  print(pessoa2 == PessoaFactory.instancia);
  print('');
}

singletonInstancia() {
  print('11.4 - Singletons Instancia');
  print('');

  var pessoa1 = PessoaInstancia(nome: 'Rafael');
  print('Nome: ${pessoa1.nome}, id: ${pessoa1.identidade}');
  var pessoa2 = PessoaInstancia(nome: 'Lory', identidade: 12345678);
  print('Nome: ${pessoa1.nome}, id: ${pessoa1.identidade}');
  pessoa2.nome = 'Lord';
  print('Nome: ${pessoa1.nome}, id: ${pessoa1.identidade}');
  print(identical(pessoa1, PessoaFactory.instancia));
  //comparando o objeto com o Singleton
  print(pessoa2 == PessoaFactory.instancia);
  print('');
}

void main() {
  singletonFactory();
  singletonInstancia();
}
