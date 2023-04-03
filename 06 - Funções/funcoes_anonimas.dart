//Funções anonimas não possuem nomes
//utilizamos essas funçoes anonimas com variaveis

funcaoAnonima() {
  print('06.4.0 - Funções Anonimas');
  print('');

  print('''SINTAXE
  () {
    print('Função anonima');
  }

  () => print('Função anonima usando arrow');
''');

  print('');
  print('06.4.1 - Funções Anonimas como variaveis');
  print('');

  var variavelAnonima = () => print('Variavel anonima');
  //para usar esta função é só chamar a variavel com ().
  variavelAnonima();

  var variavelAnonimaComParametro =
      (String msg) => print('Variavel Anonima $msg');
  //aqui estamos passando um parametro na função anonima
  variavelAnonimaComParametro('com parametro!');

  print('');
  print('06.4.2 - Funções Anonimas como parametros');
  print('');

  void executarFuncao(Function funcao) => funcao();
  executarFuncao(() => print('Função anonima passada como parametro'));
}

void main() {
  funcaoAnonima();
}
