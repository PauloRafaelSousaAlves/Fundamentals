///
/// Conceito:
///         => O DateTime é uma classe com construtor para definir segundos, horas, dias, meses e anos.
///         => Duration é uma classe que usamos dentro do DateTime para definir um determinado tempo.
///

// ignore_for_file: dead_code

void main() {
  print('20.0.0 - Class DateTime');
  print('');

  print('Compilando as ${tempoAgora()}');
  print('');

  var p1 = Pessoa('Rafael', 1, 8, 1994);
  var p2 = Pessoa('Erik', 10, 7, 1997);
}

String tempoAgora() {
  DateTime tempo = DateTime.now();
  String hora =
      '${tempo.hour}:${tempo.minute}:${tempo.second}:${tempo.microsecond}';
  return hora;
}

class Pessoa {
  String? nome;
  DateTime? _data;
  DateTime? _nascimento;
  DateTime _agora = DateTime.now();

  Pessoa(this.nome, int diaNasc, int mesNasc, int anoNasc) {
    this._nascimento = DateTime.utc(anoNasc, mesNasc, diaNasc);
    print(
        '$nome nascido em $diaNasc/$mesNasc/$anoNasc - ${diaSemana(_nascimento!.weekday)}, ano: ${bissexto(anoNasc)}');
    fecundacao();
    tempo();
  }

  fecundacao() {
    int gestacaoMedia = 268;
    _data = _nascimento!.subtract(Duration(days: gestacaoMedia));
    print(
        'Data estimada da fecundação: ${_data!.day}/${_data!.month}/${_data!.year} - ${diaSemana(_nascimento!.weekday)}');
  }

  tempo() {
    print('''Tem ${idade().toStringAsFixed(0)}  anos e está vivo a :
    ${_agora.difference(_nascimento!).inDays} dias...
    ${_agora.difference(_nascimento!).inHours} horas...
    ${_agora.difference(_nascimento!).inMinutes} minutos...
    ${_agora.difference(_nascimento!).inSeconds} segundos...
''');
  }

  String bissexto(int ano) => (ano % 4 == 0 || ano % 400 == 0 && ano % 100 != 0)
      ? 'é bissexto'
      : 'não é bissexto';

  double idade() => _agora.difference(_nascimento!).inDays / 360;

  String diaSemana(int dia) {
    switch (dia) {
      case 1:
        return 'segunda feira';
        break;
      case 2:
        return 'terça feira';
        break;
      case 3:
        return 'quarta feira';
        break;
      case 4:
        return 'quinta feira';
        break;
      case 5:
        return 'sexta feira';
        break;
      case 6:
        return 'sabado';
        break;
      case 7:
        return 'domingo';
        break;
      default:
        return '';
    }
  }
}
