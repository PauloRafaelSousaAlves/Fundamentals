///
///Estas funçoes possuem um retorno implicito
///

funcaoArrow() {
  print('06.2 - Funções Arrow');
  print('');

//para fazermos uma função arrow usamos "=>"
//não precisa digitar a palavra return
//precisa sempre colocar o tipo do retorno a frente da função, para ficar de facil leitura

  String conceito() => 'Função arrow com retorno implicito';

  String somarValores(int valorA, int valorB) =>
      'Soma: $valorA + $valorB = ${valorA + valorB}';

  String verificarMaioridade(String nome, int idade) =>
      (idade >= 18) ? '$nome é maior de idade' : '$nome não é maior de idade';

  String calcularAreaDoCiurculo(double raio) =>
      'Área do círculo: ${3.14 * raio * raio}';

  double desconto(int faltas) => (faltas > 1)
      ? 0.8
      : (faltas == 1)
          ? 0.9
          : 0;

//Aqui estamos criando uma função sem retorno
//aonde passamos alguns parametros, e puxamos a função arrow desconto()
  void calcularSalrio(String nome, double salario, double bonus, int faltas) {
    var total = (salario * desconto(faltas)) + bonus;
    print('Empregado: $nome, salário: $total');
  }

  print(conceito());
  print('');
  print(somarValores(2, 3));
  print('');
  print(verificarMaioridade('Rafael', 28));
  print('');
  print(calcularAreaDoCiurculo(2));
  print('');
  calcularSalrio('Rafael', 900, 100, 2);
}

void main() {
  funcaoArrow();
}
