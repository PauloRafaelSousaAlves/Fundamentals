///
/// Set => é uma coleção de elementos unicos e ordenados entre chaves {}. Não possui acesso ao inddex.
///

void main() {
  print('16.7.0 - Coleção LinkedHashSet == Set');
  print('');

  linkedHashSet();
}

void linkedHashSet() {
  Set<dynamic> setInt = Set();
  print(
      'Implementação: ${setInt.runtimeType}'); //Implementação: _CompactLinkedHashSet<int>
  // setInt[0] = 0; //não possui acesso ao index

  setInt.add(13);
  setInt.add(13);
  //aqui no output podemos verificar que só possuimos um elemento, por mais que tenhamos add dois elementos
  //porem ambos elementos são iguais. No set não aceita elementos duplicados.
  print(setInt);
  //pode conter elemento nulo
  setInt.add(null);
  setInt.add(17);
  print(setInt);
  //aqui vamos remover o elemento 13
  setInt.remove(13);
  print(setInt); // a list SET é sempre representada por chaves {}
  print('');

  ///EXEMPLO FOR

  //aqui podemos manipular em como podemos percorrer a lista
  for (var i = 0; i < setInt.length; i++) {
    // print(setInt[i]); //Neste caso não temos acesso ao index novamente, mas pode ser contornado utilizando - elementAt
    print('For: ${setInt.elementAt(i)}');
  }
  print('');

  ///EXEMPLO FOR IN
  //aqui so percorre a lista
  for (var element in setInt) {
    print('For in: ${element}');
  }

  ///EXEMPLO FOREACH
  setInt.forEach((element) => print('ForEach: $element'));
  print('');

  ///OUTRO EXEMPLO

  Set<int> listaA = {0, 1, 2, 3, 4};
  Set<int> listaB = {3, 4, 5, 6, 7};

  ///FUNÇÕES ESPECIFICAS

  //mostra a diferença entre as listas
  print(listaA.difference(listaB));
  //mostra a união das listas
  print(listaA.union(listaB));
  //mostra o que há de comum entre as listas
  print(listaA.intersection(listaB));
  //ele nos retorna o elemento passado como parametro na função
  print(listaA.lookup(0));
}
