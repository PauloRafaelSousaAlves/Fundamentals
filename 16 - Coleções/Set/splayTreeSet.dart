import 'dart:collection';

///
/// SplayTreeSet => se organiza automaticamente com os elementos em ordem crescente
///              => por ser uma arvore de comparações não pode conter elementos nulos
///

void main() {
  print('16.7.2 - Coleção SplayTreeSet');
  print('');

  splayTreeSet();
}

void splayTreeSet() {
  SplayTreeSet<String> splayTreeSet = SplayTreeSet();
  print('Implementação: ${splayTreeSet.runtimeType}');

  splayTreeSet.add('info1');
  splayTreeSet.add('info3');
  splayTreeSet.add('info');
  splayTreeSet.add('info2');
  print(splayTreeSet);
  print('');

   ///EXEMPLO FOR

  //aqui podemos manipular em como podemos percorrer a lista
  for (var i = 0; i < splayTreeSet.length; i++) {
    // print(splayTreeSet[i]); //Neste caso não temos acesso ao index novamente, mas pode ser contornado utilizando - elementAt
    print('For splayTreeSet: ${splayTreeSet.elementAt(i)}');
  }
  print('');

  ///EXEMPLO FOR IN
  //aqui so percorre a lista
  for (var element in splayTreeSet) {
    print('For in splayTreeSet: ${element}');
  }

  print('');

  ///EXEMPLO FOREACH
  splayTreeSet.forEach((element) => print('ForEach splayTreeSet: $element'));
  print('');
}
