import 'dart:math';

///
/// Conceito => List é uma coleção dinamica e ordenada de elementos entre colchetes []
/// forEach => Aplica a função anonima a cada elemento da nossa coleção
/// - Todo array é um List<?>
///
///

void main() {
  print('16.0 - Listas - ForEach');
  print('');

  listForEach();
}

void listForEach() {
  var array = [0, 2.5, 5, 7.25, 10];
  array.forEach((element) {
    print('forEach: $element');
    print('');
  });

//para definir uma lista usamos <>
  List<int> inteiros = [1, 5, 10];
  List<double> doubles = [2.5, 7.5];
  List<bool> boleanas = [true, false, !true, !false];
  List<String> frutas = ['morango', 'banana', 'tomate'];

//para sabermos a implementação usamos o runtimeType
  print('implementação: ${frutas.runtimeType}');
  print('');
//para fazer uma interação entre as listas
  print('boleanas[3]: ${(boleanas[inteiros.length]) ? 'verdadeiro' : 'false'}');
  print('');
  //para inserir um elemento em um indice especifico
  frutas.insert(0, 'abacaxi');
  //para inserir um elemento ao final da lista
  frutas.add('laranja');
  frutas.forEach((element) => print('forEach: $element'));
  print(frutas);
  //para remover o ultimo elemento da lista
  frutas.removeLast();
  //para remover usando uma função anonima, especificando a interação com o elemento a ser removido
  frutas.removeWhere((element) => element == 'banana');
  print(frutas);
  //para verificar o elemento que esta em um determinado index
  print(frutas.elementAt(2));
  //para verificar se contem na lista
  print(frutas.contains(
      'abacaxi')); // em caso de String, se a formatação da palavra estiver diferente ira retornar um false
  print('');

  //esta sendo criado uma lista de numeros, porem acessando o construtor - FROM - e passando o elemento que queremos puxar de outra lista
  //fazendo a adição da lista de doubles tambem, utilizando - ..addAll()
  //shuffle é usado para misturar os elementos dentro da lista
  //sort() é usado para ordenar a lista

  List<num> numeros = List.from(inteiros)
    ..addAll(doubles)
    ..shuffle
    ..sort();
  print(numeros);
  print('');

  // take() utilizado para interagir com a quantidade que queremos
  //skip serve para pular a quantidade de elementos
  //sempre que estiver inetrando com a lista deste modo devemos usar o toList()
  List<dynamic> lista = List.filled(2, null, growable: false);
  lista = numeros.take(3).skip(1).take(2).toList();
  print('Lista: $lista');
  print('');

  //EXEMPLO:
  //gerador de lista double
  //lista gerada randomicamente, acessando apenas 2 casas decimais, e usando um double.parse para converter em double
  List<double> listaPrecos = List.generate(
      5,
      (i) =>
          double.parse(((i + 1) * Random().nextDouble()).toStringAsFixed(2)));
  print('Lista de preços: $listaPrecos');
  listaPrecos.forEach((element) => print('ForEach: $element'));
}
