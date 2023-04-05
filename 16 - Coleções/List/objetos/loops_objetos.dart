void main() {
  print('');
  print('16.6.2 - List escopo de loops em Objetos');
  print('');

  List<Proprietario> proprietarios = [];
  proprietarios.add(
    Proprietario(
      'Rafael',
      'Rua dos Sonhos, 0',
      [
        Carro(
          'Honda',
          'Civic',
          'ABC1234',
          Caracteristica('Passeio', 5, 130, 'Gasolina'),
          multas: [
            Multa('Excesso de Velocidade', 'Gravissima', 7),
            Multa('Estacionar local proibido', 'Grave', 5),
          ],
        ),
        Carro(
          'Fiat',
          'Palio',
          'CBA4321',
          Caracteristica('Passeio', 5, 103, 'Gasolina'),
          multas: [
            Multa('Excesso de Velocidade', 'Gravissima', 7),
            Multa('Excesso de Velocidade', 'Grave', 5),
          ],
        ),
      ],
    ),
  );

  proprietarios.forEach((e) => e.carros.forEach((e) => e.multas?.sort(
        (a, b) => a.pontos.compareTo(b.pontos),
      ))); //multas em ordem crescente

  print('');

  for (var i = 0; i < proprietarios.length; i++) {
    var carros = proprietarios[i].carros;
    for (var carro in carros) {
      carro.multas!.forEach((e) {
        print('${proprietarios[1].nome} \t ${carro.modelo} ${carro.placa} ${carro.caracteristica.tipo} \t ${e.descricao} ${e.tipo} - ${e.pontos} pontos!');
      });
    }
  }
}

///CLASSES

class Proprietario {
  String nome;
  String endereco;
  List<Carro> carros;
  Proprietario(
    this.nome,
    this.endereco,
    this.carros,
  );
}

class Carro {
  String marca;
  String modelo;
  String placa;
  Caracteristica caracteristica;
  List<Multa>? multas;

  Carro(this.marca, this.modelo, this.placa, this.caracteristica,
      {List<Multa>? multas}) {
    this.multas = multas;
  }
}

class Caracteristica {
  String tipo;
  int passageiros;
  int potencia;
  String combustivel;
  Caracteristica(
    this.tipo,
    this.passageiros,
    this.potencia,
    this.combustivel,
  );
}

class Multa {
  String descricao;
  String tipo;
  int pontos;

  Multa(this.descricao, this.tipo, this.pontos);
}
