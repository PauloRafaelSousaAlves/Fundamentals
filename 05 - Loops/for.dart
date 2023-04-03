void main() {
  print('05.1 - For');
  print('');

  //um loop no qual conseguimos manipular o indice manualmente

  //dentro do For passamos 3 parametros:
  // 1 - estamos definindo o valor do indice
  // 2 - fazer uma comparação com o indice
  // 3 - vamos decrementar ou incrementar o indice
  for (var i = 1; i <= 3; i++) {
    print('Contagem: $i');
  }

  print('');

  //EXEMPLO CONTAGEM REGRESSIVA
  //no terceiro parametro estamos reduzindo o valor do indice de 5 em 5
  for (int i = 15; i >= 0; i -= 5) {
    print('Regressiva: $i');
  }

  print('');

  //EXEMPLO

  String nome = 'Rafael';
  int numero = 0;

  //no segundo parametro estamos comparando se o indice é menor que a quantidade de letras do nome
  for (int i = numero; i < nome.length; i++) {
    //verificação usando if/else
    if (i % 2 == 0) {
      print('$i é par');
    } else {
      print('$i é impar');
    }
    //mesma verificação usando ternario
    print('$i ${(i % 2 == 0) ? 'é par' : 'é impar'}');
  }

  print('');

  //vamos usar a função substring, e a cada loop, pega uma letra do nome
  for (var i = 0; i < nome.length; i++) {
    print('${nome.substring(i, i + 1)}'); //intervalo estipulado
  }

  print('');

  //EXEMPLO: quais os multiplos de 2 e 3 no intervalo de 5 a 12.
  for (int i = 5; i <= 12; i++) {
    if (i == 0) {
      print('$i é multiplo de todos os números');
    } else if (i % 2 == 0 && i % 3 == 0) {
      print('$i é multiplo de 2 e 3');
    } else if (i % 3 == 0) {
      print('$i é multiplo de 3');
    } else if (i % 2 == 0) {
      print('$i é multiplo de 2');
    } else {
      print('$i não é multiplo de 2 e 3');
    }
  }

  print('');

  //EXEMPLO: utilizando um array
  List<String> frutas = ['tomate', 'manga', 'pera', 'maça'];
  for (int i = 0; i < frutas.length; i++) {
    print('For: $i - ${frutas[i]}');
  }

  print('');

  //no For In, temos um controle de indice automatizado e crescente
  //utilizado apenas para percorrer a lista
  for (var fruta in frutas) {
    print('ForIn: $fruta');
  }
}
