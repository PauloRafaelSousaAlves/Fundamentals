// ignore_for_file: dead_code

void main() {
  print('03.0 - Condicionais (if e else)');
  print('');

  //se executamos uma função verdadeira ele mostra o corpo do IF, se for passado algo falso, ele não mostrara o corpo do IF
  // o if serve para indicar 'se for' aquilo mostra o corpo do IF, 'senao for' pula para a proxima condicional que seria o else

  if (!true) {
    //aqui usamos o if(aqui sera indicado a condição) // {} = o corpo que será retornado
    print('verdadeiro');
  } else {
    print('falso');
  }
  print('');

  int idade = 17;
  print(idade);

  if (idade >= 18) {
    //validando se a idade é maior ou igual a 18
    print('Idade: $idade >= 18 = maior de idade');
  } else {
    //se a idade não for maior ou igual a 18, sera chamado o else
    print('Idade: $idade >= 18 = menor de idade');
  }
  print('');

  idade = 18;
  print(idade);
  if (idade < 14) {
    //verificação simples
    print('Idade: idade < 14 = criança');
  } else if (idade >= 14 && idade <= 17) {
    //verificação mais elaborada
    print('Idade: idade >= 14 && idade <= 17 = adolecente');
  } else {
    //valor default, quando não caiu em outras condiçoes
    print('adulto');
  }

  print('');

  //EXEMPLO
  double peso = 80;
  double altura = 1.69;
  var tmp = peso / (altura * altura); // calculo do IMC
  double imc = double.parse(tmp.toStringAsFixed(
      2)); //convertendo o numero em String e fixando apenas 2 casas decimais

  //condicional validando o grau do IMC:

  if (imc < 18.5) {
    print('IMC: $imc - Abaixo do peso');
  } else if (imc >= 18.5 && imc < 25) {
    print('IMC: $imc - Peso normal');
  } else if (imc >= 25 && imc < 30) {
    print('IMC: $imc - Sobrepeso');
  } else if (imc >= 30 && imc < 30) {
    print('IMC: $imc - Obesidade grau 1');
  } else if (imc >= 35 && imc < 40) {
    print('IMC: $imc - Obesidade grau 2');
  } else {
    print('IMC: $imc - Obesidade grau 3');
  }

  print('');

  //RELEMBRANDO:

  String textInt = '10';
  String textDouble = '10.12345';
  int numeroInt = int.parse(textInt);
  var numeroDouble = double.parse(textDouble).toStringAsFixed(2);
  print('ParseInt: $numeroInt \nParseDouble: $numeroDouble');
}
