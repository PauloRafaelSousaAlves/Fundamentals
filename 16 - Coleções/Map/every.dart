///
/// Every => faz o teste em 'todos' elementos com o operador lógico && retornando (true ou false)
///

void main() {
  print('16.4.2 - Every Map');
  print('');

  everyMap();
}

void everyMap() {
  List<Map<String, dynamic>> pessoas = [
    {'nome': 'Lord', 'idade': 4},
    {'nome': 'Lory', 'idade': 5},
    {'nome': 'Lady', 'idade': 3},
  ];

  //para verificar se o elemento contem a chave "".
  print(pessoas.every((element) => element.containsKey('nome')));
  //para verificar se o elemento da chave é maior ou igual.
  print(pessoas.every((element) => element['idade'] >= 3));

  //para verificar se o valor da chave se inicia com alguma letra:
  bool maiores = pessoas.every((element) => element['nome'].startsWith('L'));
  print(maiores);
}
