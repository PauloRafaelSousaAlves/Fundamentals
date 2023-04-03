void main() {
  print('01.0 - Variaveis');
  print('');

  var valorA = 10;
  var valorB = 4;
  var valorC = 2.5;
  var resultado;

  resultado = valorA + valorB + valorC;
  print(resultado);
  print('');
  var salario = 1000, desconto = 250;
  var conta = salario - desconto;
  print(conta);
  print('');

  var numero = 3 + ((2 * 4) + (10 / 5));
  print(numero);
  print('');

  print('Concatenar é simples');

  var texto1 = '\n Rafael';
  var texto2 = "Mazzoco";
  var texto3 = '''\n e 
 Erik Coelho \n''';

  var nome = texto1 + texto2 + texto3;
  print(nome);

  var verdadeiro = true;
  var falso = false;

  //$variaveis // ${} operações

  print(
      'verdadeiro = ${verdadeiro}'); //interpolação - necessário estar dentro de chaves
  print('falso =' + "$falso"); //concatenação
  print(''.runtimeType); //descobre o tipo de variavel em tempo de execução

  const pi = 3.14; // variavel constante
  nome = 'Rafael'; //errado, pois não esta especificado

  String sobrenome = 'Mazzoco'; // esta sendo dclarado como sendo um texto

  int idade = 28; // esta sendo especificado como uma variavel de numero inteiro

  double altura =
      1.7; // esta sendo especificado como uma variavel do tipo numero quebrado

  bool adulto =
      true; // esta sendo usado para verificar se é verdadeiro ou falso

  print('\n nome:' +
      "$nome \n Qt de letras: ${nome.length}" +
      """\n Sobrenome: $sobrenome \n Qt de letras: ${sobrenome.length}""");
  print(''' idade: $idade
      altura: $altura
      adulto: $adulto
      \n pi: $pi \n''');

  dynamic variavel =
      2.0; // podemos mudar o tipo dela, após atribuir um valor inicial
  variavel = 2;
  variavel = 'dois';
  variavel = true;
  print(variavel);
}
