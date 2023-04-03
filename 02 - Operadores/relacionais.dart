void main() {
  print('02.1 - Operadores relacionais (== != > >= < <=)');
  print('');

  var nota = 69;

  var resultado1 =
      nota >= 70; // esta sendo feito a validação se é maior ou igual
  print('Validação 69 >= 70: $resultado1');
  print('');

  var resultado2 = nota > 70; // esta sendo feito a validação se é maior
  print('Validação 69 > 70: $resultado2');
  print('');

  var resultado3 =
      nota <= 70; // esta sendo feito a validação se é menor ou igual
  print('Validação 69 <= 70: $resultado3');
  print('');

  var resultado4 = nota < 70; // esta sendo feito a validação se é menor
  print('Validação 69 < 70: $resultado4');
  print('');

  var resultado5 = nota == 69; // esta sendo feito a validação se é igual
  print('Validação 69 == 69: $resultado5');
  print('');

  var resultado6 = nota != 69; // esta sendo feito a validação se é igual
  print('Validação 69 != 69: $resultado6');
  print('');
}
