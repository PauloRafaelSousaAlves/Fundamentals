import 'package:projeto/projeto.dart' as projeto;

///
/// Assert:
///        => Usa lógica boleanas para testar afirmações no modo debug
///        => Try/Catch pode ser usado para tratar a exceção
///
/// Test:
///      => Certifique-se de ter o package 'test' em 'dev_dependencies' no pubspack
///      => Atualize os packages no terminal usando 'pub get'
///      => Execute os testes na pasta raiz usando o 'pub run test'
///      => Podemos testar variaveis, funções e efetuar testes em grupo
///
/// Sintaxe:
/// 
/// test("Descricao", () {
/// expect(valorReal , valorEsperado)
/// });
///
///

void main(List<String> arguments) {
  print('19.0.0 - Testes Unitarios');
  print('');

  print('Hello world: ${projeto.calculate()}!');
  print('Listar Nomes: ${projeto.converterEmLista('Rafael Mazzoco')}!');
  print('Verificar Maioridade: ${projeto.maioridade(18)}!');
  print('Recuperar Nome: ${projeto.recuperarNome(['Rafael', 'Mazzoco'])}!');
  print('Resto da divisão: ${projeto.restoDivisao(12 , 3)}!');

  // fora do try/catch gera exceção
  String? texto;
  assert(texto == null);

  // dentro do try catch podemos otimizar essas exceções
  try {
    String telefone = '123456789';
    assert(telefone.length == 9, 'o telefone deve conter 9 dígitos');
  } catch (e) {
    print('Exceção: $e');
  }
}
