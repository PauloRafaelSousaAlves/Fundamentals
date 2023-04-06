///
/// Future => é o objeto que retorna um valor ou erro, resultado de uma execução assincrona/futura.
///

void main() {
  print('18.0.0 - Assincronismo - Futures');
  print('');

  contagem(segundos: 3);
  print(tarefa(tempo: 4)); // o print é executado antes do termino do future!
  novaTarefa(tempo: 4); // aqui o print esta sendo executadp no future!
  excecao(tempo: 6);
}

void contagem({int segundos = 3}) {
  print('Carregando...');
  for (var i = 1; i <= segundos; i++) {
    Future.delayed(Duration(seconds: i), () {
      print('${i * 33}%');
      if (i == segundos) {
        print('Concluido');
      }
    });
  }
}

//função retorna String
String tarefa({int tempo = 1}) {
  var msg = status(tempo);
  return 'Status: $msg';
}

Future<String> status([int? tempo]) {
  return Future.delayed(
      Duration(seconds: tempo!), () => 'Primeira Tarefa finalizada');
}

void novaTarefa({int tempo = 1}) {
  Future.delayed(Duration(seconds: tempo),
      () => print('Status: Segunda tarefa finalizada'));
}

void excecao({int tempo = 1}) => Future.delayed(
    Duration(seconds: tempo), () => throw Exception('Erro intencional'));
