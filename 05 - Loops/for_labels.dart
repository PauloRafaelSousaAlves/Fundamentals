void main() {
  print('05.2 - For Labels');
  print('');

//aqui estamos executando o escopo do loop, até chegar seja menor que o numero dois
//mostrando no terminal conseguimos ver as variações
  for (var i = 0; i < 2; i++) {
    //i = 0
    for (int j = i; j < 2; j++) {
      //j = 0
      for (num k = j; k < 2; k++) {
        //k = 0
        print('i: $i, j: $j, k: $k');
      }
    }
  }
  print('');
  print('For com Break e rotulos(labels)');

  loopExterno:
  for (var i = 0; i < 3; i++) {
    print('Loop Externo: i: $i');

    loopInterno:
    for (var j = 0; j <= 3; j++) {
      print('Loop Interno: i: $i, j: $j');
      //fazendo verificação, se j for maior que dois ele zera o indice novamente, e voltar ao escopo superior
      if (j > 2) break;
      //
      if (i == 1) break loopInterno;
      //
      if (i == 2) break loopExterno;
      print('Loop Completo');
    }
  }

  print('');
  print('For com Continue e rotulos(labels)');

  loopExterno:
  for (int i = 1; i <= 2; i++) {
    print('Loop Externo: i: $i');

    loopInterno:
    for (int j = 1; j <= 3; j++) {
      print('Loop interno: i: $i, j: $j');
      if (i == 1 && j == 1) continue loopInterno;
      if (i == 2 && j == 2) continue loopExterno;
      print('Loop Completo');
    }
  }
}
