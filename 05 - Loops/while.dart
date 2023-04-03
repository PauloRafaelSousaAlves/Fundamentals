void main() {
  print('05.0 - While e doWhile');
  print('');

  //o while serve para afzer o teste antes da execução
  var numero = 5;

  // o loop só é executado se o numero dor maior que 0.
  while (numero > 0) {
    print('while: $numero');
    //para não termos um looping infinito, precisamos criar uma condição para o loop pare de ser executado
    //estamos fazendo o decremento
    numero--;
  }
  print('');

  // o do while faz a execução e testa depois
  var contagem = 1;
  do {
    print('doWhile: $contagem');
    contagem++;
  } while (contagem <= 3);

  print('');

  //EXEMPLO DO WHILE COM A FUNÇÃO DE BREAK, PARA INTERROMPER O LOOP
  int multiplo = 4;
  int minimo = 10;
  int max = 20;
  int resultado = minimo;

  while (resultado <= max) {
    if (resultado % multiplo == 0) {
      print(
          'Primeiro multiplo de $multiplo entre $minimo e $max é: $resultado');
      break; // ao achar o primeiro multiplo interrompe o loop
    }
    //caso a divisao de resultado e multiplo não for exata, vou incrementar o valor de resultado
    resultado++;
  }
}
