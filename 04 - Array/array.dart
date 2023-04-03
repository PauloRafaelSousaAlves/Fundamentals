void main() {
  print('04.0 - Arrays');
  print('');

  /// O Array é uma lista dinâmica e ordenada de elementos entre colchetes, onde podemos add, remover e organizar os elementos.
  /// Sempre iniciando pelo indice 0.

  var textos = ['Rafael', 'Erik'];
  var numeros = [1, 2.5, 5, 25, 28];
  var condicoes = [!false, true, false, null];

// Para representar algum elemento em especifico, colocamos o indice dele entre colchetes
  print('Texto: ${textos[0]} e ${textos[1]}');
  print('Texto: ${textos[0]} tem ${numeros[4]} anos');
  print(
      'Texto: ${textos[1]} ${numeros[3] > 17 ? 'é maior' : 'não é'} de idade');
  print(
      'Condições[3] == null: ${condicoes[3] ?? (condicoes[0]! ? condicoes[1] : condicoes[2])}');
  print('');

  bool verdadeiro = !false;
  var arrayDinamico = ['texto', [], 3, 1.5, verdadeiro];
  print(arrayDinamico);
  print('');

  //aqui estamos mudando a String que esta inserido no indice 0, pela string que esta no array texto no linha 8 no indice 0.
  arrayDinamico[0] = textos[0];

  //aqui esta sendo feito a troca do indice [1], pelos elementos apos o sinal de =
  arrayDinamico[1] = ['Mazzoco', 'Alves'];

  //aqui vamos fazer a troca do indice [2], pelo elemento numeros indice [2] da linha 9.
  arrayDinamico[2] = numeros[2];
  arrayDinamico[2] = numeros[1];

  //ja aqui estamos colocando a variavel verdadeiro, porem invertendo o valor dela com o !
  arrayDinamico[4] = !verdadeiro;
  print(arrayDinamico);

  //FUNÇÕES DO ARRAY
  print('04.1 - Funções dos arrays');
  print('');

  //para adicionar um novo elemento ao final do array
  arrayDinamico.add(condicoes[2]!);

  //para adicionar um novo elemento no indice especifico
  arrayDinamico.insert(0, 'Erick');

  //para remover um elemento especifico com o indice
  arrayDinamico.removeAt(1);

  // para remover uma sequencia, coloca o indice inicial e o final que deseja remover
  arrayDinamico.removeRange(1, 4);

  //para remover com o nome do elemento
  arrayDinamico.remove('Erick');
  print(arrayDinamico);

  //para ver o tamanho da lista
  print(arrayDinamico.length);

  //para limpar o array
  arrayDinamico.clear();

  //para verificar se o array é nulo
  print('$arrayDinamico == null: ${arrayDinamico == null}');

  //para verificar se o array é vazio
  print('$arrayDinamico == empty: ${arrayDinamico.isEmpty}');
  print('');

  //setando novos elementos para o array que esta localizado na linha 11
  numeros = [10, 5, 1, 2.25, 7.5];

  //para organizar os elementos dentro do array numerico
  numeros.sort();
  print(numeros);
  print('');

  //setando novos elementos no array textos da linha 8
  textos = ['Rafael', 'Erik', 'Lory'];

  //para organizar a lista decrescente (b,a) - esta sendo feita a comparação
  textos.sort((b, a) => a.compareTo(b));
  print(textos);

  //para organizar a lista crescente (a,b) - esta sendo feita a comparação
  textos.sort((a, b) => a.compareTo(b));
  print(textos);
}
