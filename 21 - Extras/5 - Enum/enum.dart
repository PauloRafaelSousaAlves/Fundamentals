///
/// Conceito:
///          => Um enumeration é usado para definir valores constantes nomeados.
///

// ignore_for_file: dead_code

void main() {
  print('21.5.0 - Enum');
  print('');

  //Como acessar as constantes no enum
  print('lenght: ${Status.values.length}, values: ${Status.values}\n');
  print('Acessando o index: ${Status.values[1]}\n');
  print('Rodando: ${Status.rodando}, index: ${Status.rodando.index}\n');

  //EXEMPLO FOR
  for (var i = 0; i < Status.values.length; i++) {
    print('For - index: $i, valor: ${Status.values[i]}');
  }

  print('');

  //EXEMPLO FOR IN
  for (var value in Status.values) {
    print('ForIn - index: ${value.index}, value: ${value}');
  }

  print('');

  //EXEMPLO FOREACH
  Status.values.forEach((element) =>
      print('ForEach - index: ${element.index}, value: ${element}'));
}

enum Status {
  indefinido,
  rodando,
  parado,
  pausado,
}


///OUTROS EXEMPLOS:
///
enum Time {
  hour,
  day,
  week,
  month,
  year,
}

String timeToString(Time time) {
  switch (time) {
    case Time.hour:
      return '1th';

      break;
    case Time.day:
      return '1d';

      break;
    case Time.week:
      return '1w';

      break;
    case Time.month:
      return '1m';

      break;
    case Time.year:
      return '1y';

      break;
    default:
      return '1h';
  }
}
