import 'brasil.dart';

///
/// Const => Inicializada em tempo de copilação, deve ser declarada com valor constante
/// Ao nivel de classes deve ser estatica para ficar disponivel na classe
/// Em coleções const todo o conteudo deve ser constante
///
/// Objeto imutavel => o construtor deve ser constante
/// As variaveis devem ser final ou static const
///

void main() {
  print('10.2 - Modificadores Const');
  print('');

  const pi = 3.14;
  double raio = 2;
  var resultado = pi * (raio * raio);
  print('${resultado}');

  //Coleção
  //um array final pode ser alterado
  final numeros = [raio, 2.5];
  numeros.add(resultado);
  print(numeros);
  print('');

  //Neste exemplo retornara um erro, pois nossa lista é Const e não pode ser add mais elementos
  final listaFinal = const [0, 1];
  // listaFinal.add(2); => ERRO, pois a lista é const
  print(listaFinal);
  print('');

  //Em coleções constantes, todo o conteudo deve ser Const
  const listaConst = [1, 2, pi];
  // listaConst.add(pi); => ERRO, pois a lista é const
  print(listaConst);
  print('');

  //EXEMPLO COM FOR
  for (var i = 0; i < 3; i++) {
    final indiceFinal = i;
    const constante = 1;
    print('Contagem: ${constante + indiceFinal}');
  }
  print('');

  //EXEMPLO CHAMANDO A CLASSE IMUTAVEL
  var pais = Brasil(-15.792371, -47.882326);
  print(
      'Objeto: $pais, capital: ${Brasil.capital}, latitude: ${pais.latitude}, longitude: ${pais.longitude}');
  //os estatos é um atributo estatico, então deve ser acessado atraves da classe:
  print('Estados: ${Brasil.estados}');
}
