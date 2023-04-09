import 'dart:async';

///
/// Conceito:
/// => Streams é uma forna de monitorar eventos. Ao adicionar eventos na stream os ouvintes serão notificado;
/// => As streams fornecem uma sequencia assincrona de dados. Para processar uma astream use await() ou listen();
/// => Stream é uma sequencia com varios Futures. Ao inves de obter um evento solicitado(Future), a stream informa que há um evento quando esta pronto.
///
/// Stream => Fluxo que a classe StreamController() está gerenciando;
/// add() => adiciona eventos na stream notificando os ouvintes que estão monitorando
/// listen() => Inscreve um ouvinte na stream para aguardar notificações de eventos;
///          => onDate - notifica o assinante com eventos de dados da stream, se for nulo nada acontece;
///          => onError - tratamento de eventos com erro e possivel rastreamento Stack Trace. Se omitido erros serão considerados exceptions!
///          => cancelOnError - a assinatura é cancelada automaticamente ao receber um evento de erro.
///

void main() async {
  print('18.3.0 - Assincronismo - Stream');
  print('');

  // conceito();
  // print('');
  // model();
  // print('');
  metodos();
}

///MÉTODOS

void metodos() async {
  print('18.3.2 - Assincronismo - Stream Métodos e Ouvintes');
  print('');

  var stream = Stream<dynamic>.periodic(Duration(seconds: 1), (e) => e + 1)
      .take(5)
      .asBroadcastStream(); // a função take() foi usada para pegar apenas 5 elementos da stream

  //modificar o fluxo de eventos
  stream = stream.takeWhile((element) => element <= 5).skipWhile((element) => element > 3).take(3).map((event) => event.toString().padLeft(2, '0'));

  //Ouvintes
  stream.listen(
    (onData) {
      print('Listen: $onData');
    },
    onDone: () {
      print('Contagem finalizada!');
    },
  );

  ///EXEMPLO FOREACH

  // stream
  //     .forEach((element) => print('ForEach: $element')); //lançamento de exceção

  ///EXEMPLO FOR IN => percorrer uma lista com varios eventos futuros

  // await for (dynamic evento in stream) {
  //   print('ForIn: $evento');
  // }

  ///EXEMPLO LIST

  // List<dynamic> eventos = await stream
  //     .toList(); // a cada elemento será adicionado a lista de eventos
  // print(eventos);

  ///EXEMPLO EVENTOS FUTUROS
  Future<List<dynamic>> eventosFuturos = stream.toList();
  print(await eventosFuturos);
}

///MODEL

void model() {
  print('18.3.1 - Assincronismo - Stream Model');
  print('');

  //stream
  var minhaStream = Contador(termino: 5, erro: 3)
      .stream
      .asBroadcastStream(); // para se ter mais de uma ouvinte na stream colocar sempre => .asBroadcastStream()

  //incrição de ouvintes
  final inscrito1 = minhaStream.listen(
      (onData) {
        print('Inscrito 1: $onData');
      },
      onError: (erro) {
        print('Inscrito 1: $erro');
      },
      cancelOnError: false,
      onDone: () {
        print('Inscrito 1 Completo!!!');
      });

  var pares = (e) => e % 2 == 0;
  var mapear = (e) => '$e é par';

  //Modificar eventos
  final inscrito2 = minhaStream.where(pares).map(mapear).listen(
      (onData) {
        print('Inscrito 2: $onData');
      },
      onError: (erro) {
        print('Inscrito 2: $erro');
      },
      cancelOnError: false,
      onDone: () {
        print('Inscrito 2 Completo!!!');
      });

  //Gerenciar os Inscritos
  for (var i = 1; i <= 3; i++) {
    Future.delayed(Duration(seconds: i), () {
      if (i == 1) inscrito1.pause(); //para apusar
      if (i == 2) inscrito1.resume(); //para voltar a contar
      if (i == 3) inscrito1.cancel(); //para cancelar
    });
  }
}

///CLASSE CONTADOR

class Contador {
  var _contagem = 1, termino, erro;
  final _controlador = StreamController<int>();

  Sink<int> get sink =>
      _controlador.sink; //não expor o controlador, exponha as interfaces
  Stream<int> get stream => _controlador.stream;

  Contador({this.termino = 5, this.erro = 3}) {
    Timer.periodic(Duration(seconds: 1), (Timer timer) {
      _contagem < termino ? sink.add(_contagem) : sink.close();
      _contagem++;
      if (_contagem == erro) _controlador.addError('Erro intencional');
      if (_contagem > termino) timer.cancel();
    });
  }
}

///CONCEITO AULA STREAM

void conceito() {
  var lista = <dynamic>[];
  // 1 passo - criar o controlador
  var controlador =
      StreamController<dynamic>(); //pode ser tipado o StreamController

  // 2 passo - a inteção é não deixar o controlador exposto
  var stream = controlador.stream;

  // 3 passo - incrição de ouvintes na stream
  stream.listen((onDate) {
    print('Evento: $onDate');
    lista.add(onDate); //mostra todos os eventos adicionados
  }, onDone: () {
    print('Stream finalizada!');
    print(lista); // foi print todo o fluxo da lista ao final
  });

  // 4 passo - adicionar num evento a stream
  controlador.sink.add('Rafael');
  controlador.sink.add(28);
  controlador.sink.add(1.69);
  controlador.sink.add(!false);
  controlador.sink.close();
  print('Monitorando...');
  print('');
}
