void main() {
  print(' 01.1 - Variaveis Funções');

  num pi = 3.14;

  print(pi.floor()); //utilizados para arredondar operações fracionarias
  print(pi.round()); //arredonda para o inteiro mais próximo
  print(pi.ceil()); //arredonda para o inteiro mais próximo maior
  print(pi.clamp(3,
      3.1)); //retorna um intervalo mais próximo, podemos difinir o minimo e o máximo
  print(pi.compareTo(
      3)); // -1 - inferior // 0 - iguais // 1 - se for superior o valor que esta sendo passado na variavel
  print(pi.remainder(3)); //retorna o resto da divisão // 0.14000000000000012
  print(pi.toInt()); //faz uma conversão do double para um numero inteiro
  print(pi.toDouble()); //faz uma conversão do double para um numero fracionado
  print(pi.toString()); //transfoma o resultado em uma String(texto)
  print(pi.toStringAsFixed(
      1)); //retorna o resultado após a virgula, podemos chamar quantas casas decimais precisamos
  print(pi.truncate()); //ela discarta a parte fracionaria
  print(pi.isNegative); //verifica se é negativo
  print(pi.isInfinite); //verifica se é infinito
  print(12
      .gcd(16)); //retorna o maximo divisor comum entre os numeros que coloquei
  print(
      '1'.padLeft(2, '0')); //formata o que esta a esquerda do que foi inserido
  print(
      '1'.padRight(2, '0')); //formata o que esta a direita do que foi inserido
  print('');

  String nome = 'Rafael';
  String nomeCompleto = '\t Rafael Mazzoco';

  print(nome.toLowerCase()); //converte todos os caracteres para minusculo
  print(nome.toUpperCase()); //converte todos os caracteres para maiusculo
  print(nomeCompleto.trim()); //remove os espaços do inicio e fim
  print(nomeCompleto.split(
      ' ')); //ela divide a string de acordo com o parametro que passar e retorna um arrey
  print(nome.split(
      '')); //não passando nada como parametro, ela nos retorna a String dividida e como um arrey
  print(nome.substring(3,
      5)); //define um index inicial e um final, restornando o que esta entre eles
  print(nome.startsWith(
      'R')); //verifica se a String inicia com a letra passada no parametro, retornando um bool
  print(nome.startsWith('fael',
      2)); //pode passar uma letra e o index, verificando se no mesmo possui a letra
  print(nome.replaceAll('a',
      'o')); //substitui todo o parametro que passar pelo segundo argumento da função
  print(nome.replaceFirst('Ra',
      '')); //retira o argumento que foi passado, e coloca o segundo argumento que foi pedido no parametro
  print(nome.replaceRange(
      3, 5, '')); // ele substitui ox index pelo argumento passado
  print(nomeCompleto.trim().split(
      ' ')); //deste modo estamos combinando funções, retirando os espaços vazios no começo e fim. e colocando o parametro passado no split transformando em um array
  print(nome.contains('r')); //verifica se contem o que foi passado no parametro
  print(nome.contains(
      'a', 1)); //aqui podemos verificar se contem tal parametro no index tal
  print(nome.indexOf('fael')); //retorna o index de acordo com o parametro
  print(nome.length); //ele retorna o comprimento do array
  print(nome
      .endsWith('l')); //verifica se a String termina com o parametro atribuido
  print(nome
      .compareTo('Rafael')); //retorna 0 - se for igual / -1 - se não for igual
  print(nome.isEmpty); //verifica se é uma String vazia
  print(nome.lastIndexOf(
      'a')); //retorna o ultimo index que esta localizado o paramtro passado

  //EXEMPLO:

  String sopa = 'sopa de letrinhas';
  int index = sopa.indexOf(' de ');
  print('A sopa é ${sopa.substring(index).trim()}');

  print('');

  num numero = 3.14;
  print(numero is double); //o is pode ser usado para fazer uma verificação
  print(numero is! double); //o is tambem pode ser usado para fazer uma negação
}
