///
/// Where => Filtra os elementos da coleção criando uma nova do mesmo tamanho ou menor, dependendo do filtro
///

// ignore_for_file: unnecessary_type_check

void main() {
  print('16.4 - List Where');
  print('');

  listWhere();
}

void listWhere() {
  List<int> idades = [36, 12, 18, 31, 17, 23];

  print(idades.where((element) => element
      is int)); // aqui esta retornando em Itareble , para converter em lista é so colocar o (.toList()) no final
  print(idades
      .whereType<int>()); //outro exemplo, sem precisar criar uma função dentro


  //Filtros utilizados:

  List<int> adultos = idades.where((int element) => element > 17).toList();
  print('Adultos: $adultos');
  var crianca =
      idades.singleWhere((int element) => element < 12, orElse: () => 0);
  print('Crianças: $crianca');
  int menor = idades.lastWhere((int element) => element.toString().startsWith('1'), orElse: () => 0);
  print('Menor: $menor');
}
