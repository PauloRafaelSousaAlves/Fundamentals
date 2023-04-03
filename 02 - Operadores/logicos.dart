void main() {
  // || - significa ou
  print('02.0 - Operadores lógicos (&& || !)');
  print('');

  var verdadeiro = false;
  bool falso = true;
  print('false = $falso');
  print('verdadeiro = $verdadeiro');
  print('');

  //na linha 7 e 8, podemos ver que esta sendo mostrado o que foi passado na variavel
  // o operador (!) - inverte o bool
  print('verdadeiro = ${!verdadeiro}');
  print('falso = ${!falso}');
  print('');

  //ambos os acasos acima da linha 10 e 11, estamos usando o exclamação na frente,
  //ou seja, estamos convertando a variavel para a opção ao contrario do que foi passado

  //EXEMPLO:
  print('Operador (!) - \n !true = ${!true}, \n !false = ${!false}');
  print('');

  //Aqui estamos usando o operador || para fazer comparação - precisa somente de uma afirmação verdadeira

  bool test1 = verdadeiro || verdadeiro;
  bool test2 = verdadeiro || falso;
  bool test3 = falso || falso;

  print(test1);
  print(test2);
  print(test3);

//Aqui estamos usando o operador && - somente se ambas afirmações será true

  bool test4 = !verdadeiro && !verdadeiro;
  bool test5 = verdadeiro && falso;
  bool test6 = !falso && !falso;

  print(test4);
  print(test5);
  print(test6);

  print('');

  //EXEMPLO:

  bool operacao = (1 <= 2) && (3 > 2);
  print('(1 <= 2) && (3 > 2) = $operacao');

  operacao = !(1 > 2) && (3 < 2) || false;
  print('!(1 > 2) && (3 < 2) || false = $operacao');
}
