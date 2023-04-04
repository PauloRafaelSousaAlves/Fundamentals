import 'cidadao.dart';

///
/// Conceito => Interfaces são modelos para implementar metodos e atributos em nossas classes
///
/// Regras:
/// - Ao implementar uma interface devemos utilizar todos os metodos e atributos
/// - No dart não tem sintaxe para interfaces, pode ser uma classe concreta ou abstrata
/// - Pode implementar mais de uma interface e deve sobrescrever todos os metodos e atributos
///

void main() {
  print('14.0 - Interfaces');
  print('');

  var rafael = Candidato('Rafael', ideologia: 'Arco Irís', partido: 'Unicórnio');
  rafael
    ..objetivo = 'Ganhar eleição'
    ..objetivosPessoais()
    ..postagem = 'Vou acabar com a fome no Brasil'
    ..escreverPostagem()
    ..ideologiaPolitica();
}
