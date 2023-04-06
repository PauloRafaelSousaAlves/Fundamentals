///
/// Map => a função map transforma/seleciona os elementos de uma coleção criando uma nova do mesmo tamanho.
///

void main() {
  print('16.4.1 - Map map');
  print('');

  map();
}

void map() {
  //utiliza uma Lista do tipo Map para representar os objetos dentro da lista, parecido com o Json
  List<Map<String, dynamic>> carrinho = [
    {'nome': 'Borracha', 'preco': 3.45},
    {'nome': 'Caderno', 'preco': 13.9},
    {'nome': 'Kit Lápis', 'preco': 41.22},
    {'nome': 'caneta', 'preco': 7.5},
  ];

  Function(Map<String, dynamic>) porcentagem(desconto) =>
      (valor) => desconto * valor['preco']; //closure
  final moeda =
      (e) => 'RS ${e.toDouble().toStringAsFixed(2).replaceFirst('.', ',')}';
  List<String> precos1 = carrinho
      .map(porcentagem(.9))
      .map(moeda)
      .toList(); //aqui foi utilizado uma closure
  // outra forma de fazer a linha de cima:
  List<String> precos2 = carrinho
      .map((e) => e.update('preco', (e) => e * .9))
      .map(moeda)
      .toList(); //aqui utilizado uma função update
  print('Lista de preço 1: $precos1');
  print('Lista de preço 2: $precos2');
  print('');

  //Mapear todas as chaves da Lista de Map onde possue os preços
  String precoMedio = (carrinho.map((e) => e['preco']).reduce((p, c) => p + c) /
          carrinho.length)
      .toStringAsFixed(2);
  print('Preço Médio: $precoMedio');
  print('');
}
