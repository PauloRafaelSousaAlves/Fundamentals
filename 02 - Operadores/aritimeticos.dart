void main() {
  print(
      '02.2 - Operadores aritimeticos (+ - * / ~/ %),\n incrementos ( += ++), \n decremento (-= --), \n assignação ( = ??).');
  print('');

  var peso = 10;

  peso = peso + 5; //adicionando
  peso += 5; //o nuemro mais ele mesmo
  peso++; //incrementa de 1 em 1

  var a, b, c, d, e, f;

  a = 3;
  b = ++a; //simbolo ++ na frente, incrementa o valor antes que o outro receba
  print('a: $a, b: $b');

  c = ++a /
      --b; //aqui esta fazendo uma divisao com o valor incrementado e decrementado
  print('a: $a, b: $b');
  print(c);

  d = a ~/ b; //divisão retornando um numero inteiro
  print('c: $c, d: d: $d');
  print('');

  //EXEMPLO

  var valorA = 9, valorB = 2;
  print('9 ~/ 2 = ${valorA ~/ valorB}');
  print('');

  e = 1;
  f = e;
  f = null; //esta transformando o valor em nulo
  f ??=
      ++e; //f recebe o incremento se ele estiver como nulo (??= ele verifica o valor a esqueda e aplica o valor que esta a direita)
  print('e: $e, f: $f');

  var x, y, z;
  z = 1;
  x = y ??
      z; //x esta recebendo o valor de y, porem se y for nulo vai pegar o valor de z
  print('z: $z, x: $x');

  //EXEMPLO
  var nome = null;
  print(
      'nome: ${nome ?? 'Rafael'}'); //se a variavel for nula, receberá o valor da string
  print('');

  var numero = 12;
  var par = numero % 2 ==
      0; //operação logica (mostra o resultado da divisao) falando sé true ou false se for diferente de 0
  var impar = numero % 2 !=
      0; //operação logica (mostra o resultado da divisao) falando sé true ou false
  var positivo = numero >= 0;
  var negativo = numero < 0;

  print(
      'numero: $numero,\n Par - numero % 2 == 0: $par,\n Impar - numero % 2 != 0: $impar,\n Positivo - numero >= 0: $positivo,\n Negativo - numero < 0: $negativo');
}
