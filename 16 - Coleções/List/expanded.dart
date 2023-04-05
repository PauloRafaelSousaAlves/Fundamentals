///
/// Conceito => List é uma coleção dinamica e ordenada de elementos entre colchetes []
/// expanded => cria uma nova lista expanddindo ou concatenando novos elementos
/// - Todo array é um List<?>
///
///

void main() {
  print('16.1 - Listas - Expanded');
  print('');

  listExpanded();
}

void listExpanded() {
  //aqui podemos observar que possuimos duas lista dentro de uma
  var lista = [
    [1, 2],
    [3, 4]
  ];
  //com o expand, conseguimos pegar as duas listas anteriores que estavam separadas e juntar elas, ou seja, estamos concatenando a lista
  List<dynamic> listFlat = lista.expand((element) => element).toList();
  print('Lista Flat: $listFlat');
  //aqui ja estamos usando o expand para duplicar os elementos da lista
  List<dynamic> listDuplicada = listFlat.expand((e) => [e, e]).toList();
  print('Lista Duplicada: $listDuplicada');
  print('');
}
