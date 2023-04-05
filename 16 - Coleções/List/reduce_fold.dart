void main() {
  print('16.5 - List Reduce e Fold');
  print('');

  listFold();
  print('');
  listReduce();
}

void listFold() {
  ///
  /// Fold => Compara os elementos da coleção, retornando 1 unico resultante!
  ///      => O valor inicial se torna o anterior e o indice 0 se torna o atual, ou seja, ela faz o oposto de Reduce
  ///
  print('List Fold');
  print('');
  List<int> numerosPares = List.generate(6, (i) => i * 2);
  print(numerosPares);
  int valorInicial = 10;

  //aqui estamos setando um valor inicial
  int resultado = numerosPares.fold(valorInicial, (anterior, atual) {
    print('Anterior: $anterior + atual: $atual');
    return anterior + atual;
  });
  print(resultado);
   print('');

  int valorInicial2 = 30;
  int resultadoSubtracao = numerosPares.fold(valorInicial2, (anterior, atual) {
    print('Anterior: $anterior - atual: $atual');
    return anterior - atual;
  });
  print(resultadoSubtracao);
}

void listReduce() {
  ///
  /// Reduce => Compara os elementos da coleção, retornando 1 unico resultante!
  ///        => Ao interagir com os elementos o index 0 se torna o anterior, e o index 1 se torna o 0, e assim sucessivamente.
  ///
  ///
  print('List Reduce');
  print('');

  //aqui esta sendo gerado uma lista com 6 elementos com numeros pares
  List<int> numerosPares = List.generate(6, (i) => i * 2);
  print(numerosPares);

  //aqui esta recebendo a lista anterior, sendo reduzida a um elemento
  //fazendo um comparativo do anterior com o atual
  int resultado = numerosPares.reduce((anterior, atual) {
    //explicação na visualização;
    print('Anterior: $anterior + atual: $atual');
    //aqui estamos somando todos os elementos da lista
    return anterior + atual; // o retorno será o proximo anterior!
  });
  print(resultado);
  print('');

  List<bool> boleanas = [true, false, !true, !false];
  bool and = boleanas.reduce((anterior, atual) => anterior && atual);
  bool or = boleanas.reduce((anterior, atual) => anterior || atual);
  print('And: $and');
  print('Or: $or');
  print('');

  List<int> idades = [36, 12, 18, 31, 17, 23];
  int maisNovo =
      idades.reduce((anterior, atual) => (anterior > atual) ? atual : anterior);
  int maisVelho =
      idades.reduce((anterior, atual) => (anterior < atual) ? atual : anterior);
  int media = idades.reduce((anterior, atual) => anterior + atual);

  print('Mais Novo: $maisNovo');
  print('Mais Velho: $maisVelho');
  print('Media de Idade: ${(media / idades.length).toStringAsFixed(2)}');
}
