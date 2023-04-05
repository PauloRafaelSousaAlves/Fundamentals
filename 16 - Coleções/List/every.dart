///
/// Every => Faz o teste em todos os elementos com o operador '&&' retornando true ou false
///

void main() {
  print('16.3 - List Every');
  print('');

  listEvery();
}

void listEvery() {
  List<int> inteiros = [0, 1, 2, 3, 4, 5];
  bool resultado = inteiros.every((element) => element >= 0);
  print(resultado);

  List<String> textos = List.from(['Rafael', 'Erik', 'Lory']);
  resultado = textos.every((element) => element.contains('e'));
  print(resultado);
}
