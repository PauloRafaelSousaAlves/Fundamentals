import 'dart:convert';
import 'dart:ffi';

///
/// Conceito:
///         => Representational State Transfer ( Transferencia Representacional de Estado)
///         => É uma arquitetura que define um conjunto de restrições na criação de web service
///         => É uma padronização para multiplas aplicações que possam se comunicar usando protocolo HTTP
///
/// Serialização Manual - Biblioteca JSON integrada ao dart 'dart:convert' ;
///
/// Serialização JSON direta:
///                          => Perde recursos estatico de linguagens:
///                          => segunrança de tipo, autocompletar e exceções de tempo de copilação
///
///

void main() {
  print('20.0.0 - Rest - JSON');
  print('');

  // conversaoDireta();
  conversaoObjeto();
}

///CONVERSÃO DIRETA

void conversaoDireta() {
  print('20.0.2 - JSON - Conversão Direta ');
  print('');

  //EXEMPLO JSON
  String jsonData = '''
  {
    "nome" : "Rafael",
    "idade" : 28,
    "email" : "rm@gmail.com"
  }
  ''';

  ///DECODE
  Map<String, dynamic> parsedJson = jsonDecode(jsonData);
  print('ParsedJson: $parsedJson \n');

  // Conversão direta
  String nome = parsedJson['nome'];
  int idade = parsedJson['idade'];
  String email = parsedJson['email'];

  print('Uso direto: nome: $nome, idade: $idade, email: $email \n');

  //EXEMPLO MOSTRANDO ERRO DE ESCRITA - não é apontado no codigo o erro, mas ira retornar um null no console - ${parserJson['idad']} -> escrito errado
  print(
      'Uso direto: nome: $nome, idade: ${parsedJson['idad']}, email: $email \n');

  ///ENCODE
  Map<String, dynamic> map = {'nome': nome, 'idade': idade, 'email': email};
  String toJson = jsonEncode(map);
  print('ToJson: $toJson \n');
}

/// CONVERSÃO OBJETO
/// Serialização JSON em Objeto:
///                             => Utiliza recursos estaticos de linguagem
///                             => Segurança de tipos, autocompletar e exceções de tempo de copilação.
///

void conversaoObjeto() {
  print('20.0.2 - JSON - Conversão Objeto ');
  print('');

  //EXEMPLO JSON com array de objetos
  String jsonData = '''
  [
    {
    "nome" : "Rafael",
    "idade" : 28,
    "email" : "rm@gmail.com"
    },
    {
    "nome" : "Erik",
    "idade" : 25,
    "email" : "ec@gmail.com"
    }
  ]
  ''';

  ///DECODE
  List<dynamic> parsedJson = jsonDecode(jsonData);
  print('ParsedJson: $parsedJson');
  print('');

  ListaUsuario listaUsuarios = ListaUsuario.fromJson(parsedJson);
  //Aqui estamos acessando a lista de usuarios no index 0, na onde podemos acessar os atributos
  print('Uso do Objeto: email: ${listaUsuarios.usuarios[0].email}');

  //criando objeto para acessar
  Usuario usuario =
      listaUsuarios.usuarios.singleWhere((element) => element.nome == 'Rafael');
  print('Uso do Objeto: nome: ${usuario.nome}');

  //usando recurso da lista elementAt(index)
  print('Uso do Objeto: idade: ${listaUsuarios.usuarios.elementAt(0).idade}');
}

///EXEMPLO CLASSE DE SERIALIZAÇÃO DO JSON
class ListaUsuario {
  List<Usuario> usuarios;

  // Construtor default da classe
  ListaUsuario({required this.usuarios});

  factory ListaUsuario.fromJson(List<dynamic> json) {
    return ListaUsuario(
        usuarios: json.map((e) => Usuario.fromJson(e)).toList());
  }

  List<dynamic> toJson() {
    return usuarios;
  }
}

class Usuario {
  String nome;
  int idade;
  String email;

  // Construtor default da classe
  Usuario({required this.nome, required this.idade, required this.email});

 //Construtor factory retrona uma nova instancia do construtor default da classe a partir de um map
  factory Usuario.fromJson(Map<String, dynamic> json) {
    return Usuario(
      nome: json['nome'],
      idade: json['idade'],
      email: json['email'],
    );
  }

  //Transformar o objeto de um Map para JSON
  //Map retornando os atributos
  Map<String, dynamic> toJson() {
    return {
      'nome': nome,
      'idade': idade,
      'email': email,
    };
  }
}
