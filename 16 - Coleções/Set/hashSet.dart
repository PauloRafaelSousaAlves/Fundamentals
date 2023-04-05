import 'dart:collection';

///
/// HashSet => é uma coleção de elementos unicos e desordenados
///

void main() {
  print('16.7.1 - Coleção HashSet');
  print('');

  hashSet();
}

void hashSet() {
  HashSet<String> hashSet1 = HashSet(); //Implementação: _HashSet<String>
  HashSet<int> hashSet2 = HashSet();
  HashSet<int> hashSet3 = HashSet();

  print('Implementação: ${hashSet1.runtimeType}');
  print('');

  //aqui fica desordenado a lista por ser String

  hashSet1.add('A');
  hashSet1.add('B');
  hashSet1.add('C');
  hashSet1.add('D');

  print('HashSet 1: $hashSet1');

  //apenas int com 1 numero decima ficará ordenada

  hashSet2.add(1);
  hashSet2.add(2);
  hashSet2.add(3);

  print('HashSet 2: $hashSet2');

  //com duas casas decimais ficam desordenadas

  hashSet3.add(11);
  hashSet3.add(22);
  hashSet3.add(33);

  print('HashSet 3: $hashSet3');
  print('');

  ///EXEMPLO FOR

  //aqui podemos manipular em como podemos percorrer a lista
  for (var i = 0; i < hashSet1.length; i++) {
    // print(hashSet1[i]); //Neste caso não temos acesso ao index novamente, mas pode ser contornado utilizando - elementAt
    print('For hashSet: ${hashSet1.elementAt(i)}');
  }
  print('');

  ///EXEMPLO FOR IN
  //aqui so percorre a lista
  for (var element in hashSet2) {
    print('For in hashSet: ${element}');
  }

  print('');

  ///EXEMPLO FOREACH
  hashSet3.forEach((element) => print('ForEach hashSet: $element'));
  print('');
}
