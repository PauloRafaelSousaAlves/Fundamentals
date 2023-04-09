///
/// Conceito:
///         => Funções geradoras produzem sequencias de valores usando funções geradoras
///         => Funções sincronas retornam Iterable
///         => Funções assincronas retornam Stream
///

void main() async {
  print('18.4.0 - Assincronismo - Generators');
  print('');

  // funcoesGeradoras();
  // funcoesGeradorasRecursivas();
  tratamentoExcecoes();
}

/// yield:
///      => Utilizado em funções geradoras sincronas e assincronas
///      => Adiciona um valor ao fluxo de saída da função assincrona marcada por *, retornando sem encerrar a função

void funcoesGeradoras() {
  print('18.4.1 - Assincronismo - Generators');
  print('');

  ///Função Sincrona
  Iterable<int> funcaoSincrona(int repeticaoMaxima) sync* {
    // colocar sempre sync*, para indicar que é uma função geradora
    int i = 0;
    while (i < repeticaoMaxima) yield ++i;
  }

  print(funcaoSincrona(5));
  print('');

  /// Função assincrona
  Stream<int> funcaoAssincrona(int repeticaoMaxima) async* {
    // colocar sempre async*, para indicar que é uma função geradora
    int i = 0;
    while (i < repeticaoMaxima) yield ++i;
  }

  funcaoAssincrona(3).forEach((element) => print(element));
}

/// yield *:
///      => Utilizado em funções geradoras sincronas e assincronas recursivas(valores repetidos)
///      => Você podea melhorar seu desempenho usando yield* usando for recursivo

void funcoesGeradorasRecursivas() {
  print('18.4.2 - Assincronismo - Generators Recursivas');
  print('');

  ///Função Sincrona
  Iterable<int> funcaoSincrona(int repeticaoMaxima) sync* {
    // colocar sempre sync*, para indicar que é uma função geradora
    for (int i = 1; i <= repeticaoMaxima; i++) {
      yield i;
      yield* funcaoSincrona(i - repeticaoMaxima);
    }
  }

  print(funcaoSincrona(3));
  print('');

  /// Função assincrona
  Stream<int> funcaoAssincrona(int repeticaoMaxima) async* {
    // colocar sempre async*, para indicar que é uma função geradora
    for (int i = 1; i <= repeticaoMaxima; i++) {
      yield i;
      yield* funcaoAssincrona(i - repeticaoMaxima);
    }
  }

  funcaoAssincrona(3).forEach((element) => print(element));
}

///
/// Try Catch => tratamento de exceções
///

void tratamentoExcecoes() async {
  print('18.4.3 - Assincronismo - Funções Geradoras Tratamento de Exceções');
  print('');

  Future<int> streamSoma(Stream<int> stream) async {
    var soma = 0;

    try {
      await for (var valor in stream) {
        soma += valor;
      }
    } catch (e) {
      print(e);
      return -1;
    }
    return soma;
  }

  Stream<int> streamContagem(int termino, {int erro = 0}) async* {
    for (int i = 0; i <= termino; i++) {
      if (i == erro) {
        throw Exception('Exception intencional');
      } else {
        yield i;
      }
    }
  }

  var stream = streamContagem(10, erro: 3);
  var soma = await streamSoma(stream);
  print(soma);
  // stream.forEach((element) => print(element));
}
