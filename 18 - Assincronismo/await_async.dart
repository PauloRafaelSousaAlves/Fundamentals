///
/// Sincrona => operações sincronas bloqueiam a execução qté que seja concluida (for, while)
///          => funções sincronas executam somente operações sincronas
///
/// Assincrona => operações assincronas permitem executar outras, enquanto são processadas
///            => funções assincronas executam ao mesmo tempo uma operação assincrona e operação sincrona
///
/// Await => indica a espera de uma operação assincrona, conclusão de uma future
///
/// Async => deve ser usado em toda função ou metodo que tenha operações assincronas com Await
///
///

void main() async {
  print('18.1.0 - Assincronismo - Await e Async');
  print('');

  contagem(segundos: 3); //FUNÇÃO SINCRONA

  print(await tarefa(tempo: 3)); //FUNÇÃO ASSINCRONA
}

///FUNÇÕES SINCRONA

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

///FUNÇÕES ASSINCRONAS

Future<String> tarefa({int tempo = 1}) async {
  var msg = await status(tempo);
  return 'Status: $msg';
}

Future<String>? status([int? tempo]) {
  try {
    // Future.error('Tempo insufucuente para o Load programado!'); // No Future.error, apenas lança o erro não consegue fazer o tratamento da exceçao
    if (tempo! < 4) throw Exception('Tempo insufucuente para o Load programado!'); // aqui esta sendo feito o tratamento da exceção
    return Future.delayed(
        Duration(seconds: tempo), () => 'Primeira Tarefa finalizada');
  } catch (e) {
    print('catch: $e');
  }
  return null;
}
