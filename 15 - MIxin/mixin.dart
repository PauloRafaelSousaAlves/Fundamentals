import 'cidadao.dart';

///
/// Conceito => Permite implementar metodos e atributos de outras classes
///
/// Regras:
/// - Deve ser implementado antes das interfaces
/// - Podem ser implementados a partir de uma classe concreta ou abstrata
/// - Não pode implementar uma classe que estenda de uma classe mixin
/// - Pode implementar mais de um mixin, e não é obrigatorio usar todos os metodos e atributos como é feito em interfaces
/// - As classes que possuem metodos iguais serao sobrescritas em ordem ate a classe herdeira
///
/// ON => é obrigatorio declarar sua classe como mixin
///    => Restringe o uso do mixin as classes que estendem ou implementam a classe declarada
///

void main() {
  print('15.0 - Mixin');
  print('');
  var rafael =
      Candidato('Rafael', ideologia: 'Arco Irís', partido: 'Unicórnio');
  rafael
    ..objetivo = 'Ganhar eleição'
    ..objetivosPessoais()
    ..postagem = 'Vou acabar com a fome no Brasil'
    ..escreverPostagem()
    ..ideologiaPolitica()
    ..depositar = 395000
    ..prestacaoContas();
}
