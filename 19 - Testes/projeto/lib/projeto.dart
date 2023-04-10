int calculate() {
  return 6 * 7;
}

List<String> converterEmLista(String nome) {
  return nome.split(' ').toList();
}

String recuperarNome(List<String> nomes) {
  return nomes[0];
}

double restoDivisao(double a, double b) {
  return a.remainder(b);
}

String maioridade(int idade) {
  try {
    if (idade < 0) throw Exception('A idade não pode ser negativa');
  } catch (e) {
    print('Exceção: $e');
  }
  return idade < 14
      ? 'Criança'
      : idade < 18
          ? 'Adolecente'
          : 'Adulto';
}
