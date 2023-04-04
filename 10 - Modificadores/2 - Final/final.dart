import 'pessoa_final.dart';

///
/// Final => Inicializada apenas quando acessada em tempo de execução, deve ser declarada
/// Em coleções final, nem todo o conteudo será final
///

void main() {
  print('10.1 - Modificadores Final');
  print('');

  //EXEMPLO: Um objeto em queda livre leva 5s para chegar ao solo! Qual a velocidade maxima do objeto?

  //a variavel gravidade, foi inicializada em tempo de execução e foi declarada, e não pode alterar o valor
  final gravidade = 9.8;
  int tempo = 5;
  double velocidade = gravidade * tempo;
  print('Velocidade maxima: $velocidade m/s');
  print('');

  //OUTRO EXEMPLO:
  for (int i = 0; i <= 3; i++) {
    final indice = i;
    print('contagem: $indice');
  }
  print('');

  var pessoa = Pessoa('Rafael', ['Erik', 'Lord']);
  pessoa.nome = 'Rafael Mazzoco';
  
  //pessoa.familiares = [];  => ERRO. ATRIBUTO FINAL, NÃO PODE SER ALTERADO

  print('Nome: ${pessoa.nome}, Familiares: ${pessoa.familiares}');
}
