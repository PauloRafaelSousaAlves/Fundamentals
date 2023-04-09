///
/// Conceito => Then registra callbacks que serão chamados quando o Future for concluido
///
/// o que pode ser feito para tratamento das exceçoes:
/// onValue => valor passado ao termino do Future
/// catchError => Se o mitido é lançado como uma exception -> test: se qualquer logica retornar true é lançado como uma exception
/// whenComplete => chama a função anonima ao termino do Future
///

void main() async {
  print('18.2.0 - Assincronismo - Then');
  print('');

  contagem(segundos: 3);

  tarefa(tempo: 4).then((onValue) => print(onValue)); //função assincrona
}

///FUNÇÃO SINCRONA

void contagem({int segundos = 3}) {
  print('Carregando...');
  for (var i = 1; i <= segundos; i++) {
    Future.delayed(Duration(seconds: i), () {
      print('${i * 33}%');
      if (i == segundos) {
        print('Concluido \n');
      }
    });
  }
}

///FUNÇÕES ASSINCRONAS

Future<String> tarefa({int tempo = 1}) async {
  return status(tempo).then((msg) {
    return 'Status: $msg';
  }).catchError((onError) {
    print('CatchError: $onError');
  },
      test: (onError) =>
          onError is! Future && onError.runtimeType != Future).whenComplete(
      () => print('Future Completa'));
}

Future<String> status([int? tempo]) {
  return Future.delayed(
      Duration(seconds: tempo!), () => Future.error('Erro intencional'));
  // return Future.delayed(
  //     Duration(seconds: tempo!), () => 'Primeira Tarefa finalizada');
}
