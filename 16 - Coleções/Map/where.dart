///
/// Where filtra os elementos da coleção criando uma nova do mesmo tamanho ou menor
///

void main() {
  print('16.4.3 - Every Map');
  print('');

  whereMap();
}

void whereMap() {
  List<Map<dynamic, dynamic>> produtos = [
    {'nome': 'Notebook', 'preco': 2499.00, 'fragil': true},
    {'nome': 'Ipad', 'preco': 4199.00, 'fragil': true},
    {'nome': 'Iphone', 'preco': 2299.00, 'fragil': true},
    {'nome': 'Magic Mouse', 'preco': 299.00, 'fragil': false},
  ];

  final fragil = (e) => e['fragil'] == true;
  final nome = (e) => e['nome'];
  List<dynamic> resultado = produtos.where(fragil).map(nome).toList();
  print('Produtos Frageis: $resultado');
  print('');

  List<Map<String, dynamic>> pessoas = [
    {'nome': 'Rafael', 'idade': 28},
    {'nome': 'Erik', 'idade': 25},
    {'nome': 'Lory', 'idade': 17},
  ];

  List<Map<String, dynamic>> maiores =
      pessoas.where((element) => element['idade'] >= 21).toList();
  print('Maiores de idade: $maiores');
  Map<String, dynamic> comecaComL =
      pessoas.firstWhere((element) => element['nome'].startsWith('L'));
  print('Inicia com a letra L: $comecaComL');
  Map<String, dynamic> menores =
      pessoas.singleWhere((element) => element['idade'] < 18);
  print('Menores de idade: $menores');
  final Function(Map<String, dynamic>) idades = (e) => e['idade'];
  final Function(dynamic, dynamic) soma = (p, c) => p + c;
  var media = (pessoas.map(idades).reduce(soma)) / pessoas.length;
  print(media);
}
