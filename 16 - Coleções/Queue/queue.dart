import 'dart:collection';

///
/// Queue => é uma coleção ordenada entre chaves {}, sem index, só podendo manipular o inicio e o fim da lista.
///       => pode add o elemento nulo na lista Queue
///

void main() {
  print('16.7.3 -Coleção Queue');
  print('');

  queue();
}

void queue() {
  Queue<int> queue = Queue();
  print('Implementação: ${queue.runtimeType}');
  print('');

  queue.addAll([20, 30]);
  queue.add(40);
  print(queue);
  print('');

  ///FUNÇÕES ESPECIFICAS

  //add um elemento no inicio da lista
  queue.addFirst(10);
  //add um elemento no final da lista
  queue.addLast(50);
  //utilizando o add, segue o padrão de ir para o final da lista
  queue.add(60);
  print(queue);
  print('');

  //para remover o ultimo elemento da lista
  queue.removeLast();
  //para remover o primeiro elemento da lista
  queue.removeFirst();
  print(queue);
  print('');

  ///EXEMPLO FOREACH
  
  queue.forEach((e) => print(e));
}
