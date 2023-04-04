//Na linha 4 e 5 vamos declarar como Final, pois precisamos que seja feito no tempo de execução
//Na linha 10 estamos definindo o const antes do construtor, para ele se tornar imutavel

class Brasil {
  final double latitude;
  final double longitude;
  static const String capital = 'Brasilia';
  static const estados = ['SP', 'RJ', 'MG', '...'];

  const Brasil(this.latitude, this.longitude);
}
