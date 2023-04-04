import 'calculos.dart';

///
///Static => A variavel estatica fica disponivel na propria classe em vez de suas instancias/objetos
///Em metodos estaticos deve se usar variaveis estaticas da classe
///Variaveis estaticas podem ser acessadas sem precisar instancias classes/objetos
///

void main() {
  print('10.0 - Modificadores Statics');
  print('');

  double raio = 5;
  var calculo1 = Calculos();

  //Para acessar os atributos sem ser estatico precisa ser instanciado
  print(calculo1.pi);
  print(calculo1.areaCirculo(raio));
  print('');

  //Para acessar um atributo estatico da classe, basta colocar o nome da classe + (.) e puxar o atributo estatico
  print(Calculos.piStatic);
  print(Calculos.areaCirculoStatic(raio));
}

