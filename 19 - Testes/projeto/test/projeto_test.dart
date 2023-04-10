import 'package:projeto/projeto.dart';
import 'package:test/test.dart';

void main() {
  ///TESTES EM VARIAVEIS
  test('Converter Strings em array', () {
    String texto = 'Rafael,Erik,Lory';
    expect(texto.split(','), equals(['Rafael', 'Erik', 'Lory']));
  });

  /// TESTES EM FUNÇÕES
  test('calculate', () {
    expect(calculate(), 42);
  });

  group('Manipulação de Strings', () {
    test(
        'Converter em Lista',
        () => expect(
            converterEmLista('Rafael Mazzoco'), equals(['Rafael', 'Mazzoco'])));
    test('Recuperar Nome',
        () => expect(recuperarNome(['Rafael', 'Mazzoco']), equals('Rafael')));
  });

  group('Manipulação de Numeros', () {
    test('Resto da Divisão', () => expect(restoDivisao(12, 3), equals(0)));
    test('Verificar Maioridade', () {
      expect(maioridade(18), 'Adulto');
      expect(maioridade(13), 'Criança');
      expect(maioridade(16), 'Adolecente');
    });
  });
}
