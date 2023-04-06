///
/// Tratamento de Exceções
///
/// Try => usado para testar uma lógica
/// Catch => captura os erros na lógica try
/// On => Captura especificos / conhecidos na lógica try
/// Throw Exception => exceção criada pelo usuario e tratada no catch
/// Finally => executado ao final do try/catch, com exceção ou não! Utilizado para liberar recursos na lógica try.
///
///
void main() {
  print('17.0.0 - Tratamento de Exceções');
  print('');

  case1();
  case2();
  case3();
  case4();
  case5();
}

void case5() {
  /// Utilizado para fazer tratamento após a execução do Try Catch, usada para liberar recursos utilizados na logica try catch

  print('17.0.5 - Throw ExceptionStack Trace');
  print('');

  //Try serve para testar a lógica
  try {
    int valorA = 1;
    int valorB = 0;
    double resultado = valorA / valorB;
    if (resultado.isInfinite)
      //se o resultado for verdadeiro lança uma exceção, usando throw Exception().
      throw Exception('A variavel valorB deve ser != 0');
  }

  //serve para fazer o tratamento das exceções recebidas anteriormente com o parametro (e)
  //agora passaremos o parametro (s)
  catch (e) {
    print(
        'Excessão: $e'); // A exceção foi descoberta //Excessão: IntegerDivisionByZeroException

  }
  //tratamento após finalizar o try catch
   finally {
    print('Finally: Com ou sem exceção finally será executado!');
  }
  print('');
}

void case4() {
  /// Utilizado para fazer tratamento após a execução do Try Catch, usada para liberar recursos utilizados na logica try catch

  print('17.0.4 - Finally');
  print('');

  //Try serve para testar a lógica
  try {
    int resultado = 1 ~/ 0;
    print('Resultado: $resultado');
  }

  //serve para fazer o tratamento das exceções recebidas anteriormente com o parametro (e)
  //agora passaremos o parametro (s)
  catch (e) {
    print(
        'Excessão: $e'); // A exceção foi descoberta //Excessão: IntegerDivisionByZeroException

  }
  //tratamento após finalizar o try catch
   finally {
    print('Finally: Com ou sem exceção finally será executado!');
  }
  print('');
}

void case3() {
  /// Utilizado quando queremos descobrir o evento que ocorreu antes da exceção

  print('17.0.3 - Stack Trace');
  print('');

  //Try serve para testar a lógica
  try {
    int resultado = 1 ~/ 0;
    print('Resultado: $resultado');
  }

  //serve para fazer o tratamento das exceções recebidas anteriormente com o parametro (e)
  //agora passaremos o parametro (s)
  catch (e, s) {
    print(
        'Excessão: $e'); // A exceção foi descoberta //Excessão: IntegerDivisionByZeroException
    //no output o Stack Trace mostra todo o historico da onde começou a dar erro
    print('Stack Trace: $s');
  }
  print('');
}

void case2() {
  /// Utilizado quando conhecemos a exceção

  print('17.0.2 - On');
  print('');

  //Try serve para testar a lógica
  try {
    int resultado = 1 ~/ 0;
    print('Resultado: $resultado');
  }
  // Aqui iremos fazer o tratamento da exceção - IntegerDivisionByZeroException, pore ela esta depreceada, então usaremos o UnsupportedError.
  on UnsupportedError {
    print('Exceção: Não é possivel dividir por 0');
  }
  //serve para fazer o tratamento das exceções recebidas anteriormente
  catch (e) {
    print(
        'Excessão: $e'); // A exceção foi descoberta //Excessão: IntegerDivisionByZeroException
  }
  print('');
}

void case1() {
  /// Utilizado quando desconhecemos a exceção

  print('17.0.1 - Try Catch');
  print('');

  //Try serve para testar a lógica
  try {
    int resultado = 1 ~/ 0;
    print('Resultado: $resultado');
  }
  //serve para fazer o tratamento das exceções recebidas anteriormente
  catch (e) {
    print('Excessão: $e'); //Excessão: IntegerDivisionByZeroException
  }
  print('');
}
