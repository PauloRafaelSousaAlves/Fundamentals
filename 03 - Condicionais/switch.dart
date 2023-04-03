void main() {
  print('03.2 - Switch');
  print('');

  //O Switch é uma estrutura de decisão igual o if/else, e, o ternario.

//EXEMPLO calculadora:
  String operacao = '%'; // + - * /
  double numA = 12;
  double numB = 3;

//no switch ele vai passar caso a caso, e ver o que foi colocado como parametro, na hora que encontrar o parametro colocado ele para.
//colocamos o caso default, pois nenhuma operação apresentada nos casos, é igual ao parametro que foi passado
  switch (operacao) {
    case '+':
      print('Resultado ${numA + numB}');
      break;
    case '-':
      print('Resultado ${numA - numB}');
      break;
    case '*':
      print('Resultado ${numA * numB}');
      break;
    case '/':
      print('Resultado ${numA / numB}');
      break;
    default:
      print('Operação invalida \n');
  }

  int dia = 1;

  switch (dia) {
    case 0:
      print('Domingo');
      break;
    case 1:
      print('Segunda');
      break;
    case 2:
      print('Terça');
      break;
    case 3:
      print('Quarta');
      break;
    case 4:
      print('Quinta');
      break;
    case 5:
      print('Sexta');
      break;
    case 6:
      print('Sábado');
      break;
    default:
      print('Dia inválido');
      break;
  }
}
