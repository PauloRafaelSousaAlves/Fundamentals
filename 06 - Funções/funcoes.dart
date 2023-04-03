//FUNÇÃO SEM RETORNO:
//voce vai passar no parametro o que precisa, para depois voce colocar as informações necessarias
semRetorno() {
  print('06.0 - Funções sem retorno \n');

//Eu devo primeiro declarar a função, para depois a chama-la
  void conceito() {
    print('Função void sem retorno');
  }

  void somarValores(int valorA, int valorB) {
    var resultado = valorA + valorB;
    print('Soma: $valorA + $valorB = $resultado');
  }

  void verificarMaioridade(String nome, int idade) {
    var resposta;
    if (idade >= 18) {
      resposta = 'é maior';
    } else {
      resposta = 'não é maior';
    }
    print('$nome $resposta de idade!');
  }

  void contagemRegressiva(int numero) {
    for (var i = numero; i >= 0; i--) {
      print('Contagem: ${(i == 0) ? 'VAI!!' : i}');
    }
  }

  converterKmParaMilhas(dynamic array) {
    dynamic milha = 0.621271;
    for (dynamic item in array) {
      print('$item\t KM/h em Milhas/h ${(item * milha).toStringAsFixed(2)}');
    }
    print('Array convertido e arredondado');
  }

  conceito();
  print('');

  somarValores(2, 3);
  print('');

  verificarMaioridade('Rafael', 28);
  print('');

  contagemRegressiva(3);
  print('');

  converterKmParaMilhas(
      [1, 5, 10, 30, 40, 60, 80, 100, 120, 140, 160, 180, 200]);
  print('');
}

//FUÇÃO COM RETORNO:
//Executa a função e ela te retorna uma informação
//na sintaxe sempre precisa colocar qual o tipo do retorno
//sempre precisa colocar um retorn dentro da função
comRetorno() {
  print('06.1 - Função com retorno');

  String conceito() {
    return 'Função com retorno String';
  }

  String somarValores(int valorA, int valorB) {
    var resultado = valorA + valorB;
    return 'Soma: $valorA + $valorB = $resultado';
  }

  String verificarMaioridade(String nome, int idade) {
    var resposta;
    if (idade >= 18) {
      resposta = 'é maior';
    } else {
      resposta = 'não é maior';
    }
    return '$nome $resposta de idade!';
  }

  String contagemRegressiva(int numero) {
    var resultado;
    for (var i = numero; i >= 0; i--) {
      (i != 0) ? print('Contagem: $i') : resultado = 'Contagem Vai!!!';
    }
    return resultado;
  }

  String converterKmParaMilhas(dynamic array) {
    dynamic milha = 0.621271;
    for (dynamic item in array) {
      print('$item\t KM/h em Milhas/h ${(item * milha).toStringAsFixed(2)}');
    }
    return 'Array convertido e arredondado';
  }

  print(conceito());
  print('');
  print(somarValores(2, 3));
  print('');
  print(verificarMaioridade('Rafael', 28));
  print('');
  print(contagemRegressiva(3));
  print('');
  print(converterKmParaMilhas(
      [1, 5, 10, 30, 40, 60, 80, 100, 120, 140, 160, 180, 200]));
}

void main() {
  // dentro da função main, podemos fazer chamadas que estão dentro do escopo global
  semRetorno();

  comRetorno();
}
