///
/// Reduce => compara os elementos da coleção retornando 1 unico elemento resultante.
///        => Ao interagir com os elementos o index 0 se torna o anterior, indice 1 se torna o atual, e assim sucessivamente.
///

void main() {
  print('16.4.4 - Reduce Map');
  print('');

  reduceMap();
}

void reduceMap() {
  List<Map<String, dynamic>> alunos = [
    {'nome': 'Rafael', 'nota': 7.3, 'bolsista': false},
    {'nome': 'Erik', 'nota': 9.2, 'bolsista': true},
    {'nome': 'Lory', 'nota': 9.8, 'bolsista': true},
    {'nome': 'Lord', 'nota': 8.7, 'bolsista': false},
  ];

  final bool Function(Map<String, dynamic>) bolsistas = (e) => e['bolsista'];
  final Function(Map<String, dynamic>) nomes = (e) => e['nome'];
  final Function(Map<String, dynamic>) notas = (e) => e['nota'];

  List<dynamic> bolsistasNomes = alunos.where(bolsistas).map(nomes).toList();
  print('Alunos Bolsistas: $bolsistasNomes');

  List<Map<String, dynamic>> medias = alunos.where(bolsistas).toList();
  var bolsistasMedias = (medias.map(notas).reduce((p, c) => p + c)) /
      medias.length;
  print('Alunos Bolsistas: $bolsistasNomes, Media: $bolsistasMedias');

  // validação sendo feita com &&, 
  bool todosBolsistas = alunos.map(bolsistas).reduce((p, c) => p && c);
  print('Todos são Bolsistas: ${todosBolsistas ? 'sim' : 'não'}');
  
  //validação sendo feita com ||
  bool algumBolsistas = alunos.map(bolsistas).reduce((p, c) => p || c);
  print('Algum Bolsistas: ${algumBolsistas ? 'sim' : 'não'}');
}
