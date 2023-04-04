import 'animal.dart';
import 'objeto.dart';
import 'pessoa.dart';
import 'usuario.dart';

///Para criar um construtor devemos usar o mesmo nome da classe.
///Os construtores são iniciados sempre que instancimos as classes, podendo fazer configurações iniciais.

void main() {
  print('08.0 - Construtores');
  print('');

//
  Objeto objeto = Objeto();
  objeto.nome = 'Mesa';
  print('Nome: ${objeto.nome} \n');

//
  Animal animal = Animal('Lory', 'Shitzu');
  print(
      'Nome: ${animal.nome}, Raça: ${animal.raca}, idade: ${animal.idade} \n');

//
  Pessoa pessoa = Pessoa('Rafael', 28, altura: 1.69);
  print(
      'Nome: ${pessoa.nome}, idade: ${pessoa.idade}, cor: ${pessoa.cor}, altura: ${pessoa.altura}\n');

//
  Usuario usuario = Usuario('fma@gmail.com', '123456', nome: 'Rafael');
  print(
      'Usuario: ${usuario.user}, senha: ${usuario.senha}, nome: ${usuario.nome}, cargo: ${usuario.cargo}');
  usuario.autenticar();
  print('');

//Criando um novo objeto utilizando o construtor nomeado (.admin)
  Usuario admin = Usuario.admin('fma@gmail.com', '123456', nome: ' Rafael');
  print(
      'Usuario: ${admin.user}, senha: ${admin.senha}, nome: ${admin.nome}, cargo: ${admin.cargo}\n ');
  admin.autenticar();
}
