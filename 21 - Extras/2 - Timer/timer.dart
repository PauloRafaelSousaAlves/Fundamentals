import 'dart:async';

/// Conceito:
///         => O temporizador leva dois argumentos, uma duração e uma função para executar.
///         => A duração deve ser instancia da classe Duration.
///

void main() {
  print('21.1.0 - Class Timer');
  print('');

  print('Compilado as ${tempoAgora()}');
  print('');

  //metodo run, executa um funçao o quanto antes
  Timer.run(() => print('Executado as ${tempoAgora()}'));
  print('');

  //utilizando o construtor da classe
  Timer(Duration(seconds: 2), () => print('Após 2 segundos! ${tempoAgora()}'));
  print('');

  //utilizando a função periodic para criar uma repetição
  Timer.periodic(
    Duration(seconds: 1),
    (Timer timer) {
      contador++;

      if (contador == 4) print('Apos 4 segundos! ${tempoAgora()}');
      if (contador == 6) {
        print('Apos 6 segundos! Script finalizado!!! ${tempoAgora()}');
        timer.cancel();
      }
    },
  );
}

//variavel global
int contador = 0;

//método
String tempoAgora() {
  DateTime tempo = DateTime.now();
  String hora =
      '${tempo.hour}:${tempo.minute}:${tempo.second}:${tempo.microsecond}';
  return hora;
}
