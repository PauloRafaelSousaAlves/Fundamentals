funcaoParametros() {
  print('06.3.1 - Função com parametros posicionados e default');
  print('');

//Parametros posicionados, são praticamente parametros que não podem mudar sua posição
//usamos colchetes para definir qual parametro será posicionado
//Regra: sempre começar do ultimo parametro para posicionar
//ao colocar um parametro posicionado, podemos passar um valor como default

  void exibirDados(String nome, [int? peso = 65, double? altura]) {
    print('Nome: $nome, peso: $peso, altura: $altura');
  }

  exibirDados('Rafael');
  exibirDados('Rafael', 78, 1.69); //pode passar todos os parametros ou nenhum.
  print('');

  print('06.3.2 - Função com parametros nomeados e default');
  print('');

//Parametros nomeados, são praticamente parametros que devemos declarar os nomes na hora de chamar a função
//usamos chaves para definir qual parametro será nomeado
//Regra: sempre começar do ultimo parametro para nomear
//ao colocar um parametro nomeado, podemos passar um valor como default

  void exibirDados2(String nome, {int? peso = 80, double? altura}) {
    print('Nome: $nome, peso: $peso, altura: ${altura ?? 'Não informada'}');
  }

  exibirDados2('Rafael');
  exibirDados2('Rafael',
      peso: 78, altura: 1.69); // pode ser declarado fora de ordem
  print('');

  //Função como parametro nomeado

  print('06.3.3 - Função com parametros para outras funções');
  print('');

  void falar() {
    print('Essa é uma função passada como parametro nomeado!');
  }

  void saudacao(String nome, {Function? funcaoFalar}) {
    print('Olá eu sou $nome!');
    funcaoFalar!();
  }

  saudacao('Rafael', funcaoFalar: falar);
  print('');
  saudacao('Rafael', funcaoFalar: () => print('Essa é uma função anônima passada como parametro nomeado'));
  print('');
}

void main() {
  funcaoParametros();
}
