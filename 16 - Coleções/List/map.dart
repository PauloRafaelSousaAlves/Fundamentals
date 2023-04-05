///
/// Map => Transforma/seleciona os elementos de uma coleção criando uma nova, do mesmo tamanho

void main() {
  print('16.2 - List Map');
  print('');

  listMap();
}

void listMap() {
  List<String> frutas = ['Morango', 'Banana', 'Tomate'];

  //aqui estamos usando a função .map - para mapear tudo que tem dentro da lista
  List<String> frutasMapeadas = frutas.map((e) => '$e é uma fruta').toList();
  print(frutasMapeadas);
  print('');

  List<int> inteiros = [1, 5, 10];
  var incrementar = (int e) =>
      ++e; //aqui devemos passsar o incremento antes [++e] e não depois [e++]
  final dobro = (int e) => e * 2;

  //aqui estamos utilizando o .map na lista de inteiros
  //pegamos a lista de inteiros, incrementamos a variavel e depois multiplicamos os valores para obter o resultado
  List<int> inteirosMapeados = inteiros.map(incrementar).map(dobro).toList();
  print(inteirosMapeados);
  print('');

  List<double> doubles = [2.75, 5.5, 7.25];
  final triplo = (e) => e * 3;
  List<dynamic> doublesMapeados = doubles.map(triplo).toList();
  print(doublesMapeados);
}
