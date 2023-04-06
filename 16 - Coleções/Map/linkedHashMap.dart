///
/// Map => é uma coleção dinamica e customizavel de chaves e valores entre {}.
///     => as chaves são unicas, e os valores não se repetem
///
void main() {
  print('16.4.0 - LinkedHashMap == Map');
  print('');

  linkedHashMap();
}

void linkedHashMap() {
  List<String> nomes = ['Rafael', 'Erik'];

  //Aqui vamos colocar a primeira tipagem para chaves, e a segunda tipagem é para os valores
  Map<int, String> nomesMap =
      nomes.asMap(); // o asMap() converte uma lista em Map
  print('$nomesMap');
  print('');

  //no forEach em Map, precisa passar sempre a chave e o valor, e podemos manipular eles independente
  nomesMap.forEach((key, value) => print('$key: $value'));
  print('');

  Map<String, dynamic> frutas = Map();
  //devemos sempre definir as chaves de acordo com a tipagem:
  frutas['Banana'] = 'amarela';
  frutas['Banana'] = 'verde'; //mesma chave atualiza o valor
  frutas['Goiaba'] = 'amarela';
  frutas['Maçã'] = 'vermelha';

  print('$frutas');

  //Em Map podemos verificar se contem atraves da chave ou do valor
  print(frutas.containsKey('Banana'));
  print(frutas.containsValue('azul'));
  print(frutas['Banana']);
  print('');
  frutas.clear();
  frutas['null'] = null; // aceita valores nulos
  print(frutas);
  print('');

  ///FUNÇÕES ESPECIFICAS

  Map<String, dynamic> usuario =
      Map.from({'nome': 'Rafael', 'idade': 28, 'peso': 75.5});

  // No update passamos a chave a qual queremos atualizar e uma função passando o valor, sempre se atentando ao tipo de variavel que é.
  usuario.update('nome', (value) => '$value Mazzoco');
  print(usuario);
  // para incrementar valor
  usuario.update('idade', (value) => ++value);
  print(usuario);
  //Neste caso estamos usando o construtor ifAbsent: , pois se não ouver um valor da para manipular
  usuario.update('peso', (value) => 70, ifAbsent: () => 'indefinido');
  print(usuario);
  //para remover algum valor do Map
  usuario.removeWhere((key, value) => key == 'peso' && value == 70);
  print(usuario);
  usuario.update('peso', (value) => 70, ifAbsent: () => 'indefinido');
  print(usuario);
  //aqui é para adicionar algum valor, caso nao exista no map, caso o valor exista ele sera atualizado
  usuario.putIfAbsent('altura', () => 1.69);
  print(usuario);
  //para adicionar um valor novo
  usuario.addAll({'sexo': 'masculino', 'casado': true});
  print(usuario);
  print('');
  //para saber quais são as chaves e usuarios:
  print('Chaves: ${usuario.keys} \nValores: ${usuario.values}');
  print('');

  ///EXEMPLOS EM LOOPS

  Map<int, dynamic> numeros = {0: 'zero', 1: 'um', 2: 'dois'};
  print(numeros);
  print(numeros.map((key, value) => MapEntry(key,
      '${value.toUpperCase()}'))); //Mapeando os resultados, e fazendo uma função para os valores ficarem com a letra maiuscula
  print('');

  ///EXEMPLO FOR IN
  for (var chave in numeros.keys) {
    print('ForIn: $chave');
  }
  for (var valor in numeros.values) {
    print('ForIn: $valor');
  }
  print('');

  //para conseguir acessar as chaves e os valores no mesmo for in
  for (var key in numeros.keys) {
    final valor = numeros[key];
    print('ForIn: $key: ${valor.toUpperCase()}');
  }
}
