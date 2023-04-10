import 'dart:math';

///
/// Conceito:
///         => Um gerador de valores aleatórios bool, int ou double.
void main() {
  print('21.3.0 - Class Random');
  print('');

  var random = Random();
  var minimo = 1;
  var maximo = 2;

  for (var i = 0; i < 3; i++) {
    //nextInt serve para gerar numeros aleatorios inteiros
    print(random.nextInt(maximo +
        1)); // aqui foi colocado + 1 , pois a variavel minimo estava como 0

    print(minimo +
        random.nextInt(
            maximo)); // aqui não precisamos colocar +1, pois alteramos o valor da variavel

    //nextDouble serve para gerar numeros aleatorios doubles
    print(random.nextDouble().toStringAsFixed(2));

    //nextBool serve para gerar true e false
    print(random.nextBool());
  }
  print('');

  //UTILIZANDO O RANDOM PARA STRING
  print(' Random para String: ${Utilidades.criarStrings(10)}');
}

class Utilidades {
  static const _alfabeto =
      'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz';

  //para gerar uma String Randomica

  static String criarStrings(int numeroLetras) {
    var random = Random(DateTime.now().millisecond);
    String resultado = '';

    for (var i = 0; i < numeroLetras; i++) {
      resultado += _alfabeto[random.nextInt(_alfabeto.length + 1)];
    }

    return resultado;
  }
}
