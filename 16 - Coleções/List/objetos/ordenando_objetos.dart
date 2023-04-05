void main() {
  print('');
  print('16.6.1 - List ordenando objetos');
  print('');

  List<Vendedor> vendedores = [];
  vendedores.add(
    Vendedor(
      'Rafael',
      [
        Vendas('Iphone X', 4199.99),
        Vendas('MacBook pro', 5300.00),
        Vendas('Galaxy s10', 3500.25),
      ],
    ),
  );
  vendedores.add(
    Vendedor(
      'Erik',
      [
        Vendas('Iphone 8', 3000.00),
        Vendas('Galaxy s10', 3500.25),
        Vendas('Iphone X', 4199.99),
      ],
    ),
  );
  vendedores.add(
    Vendedor(
      'Lord',
      [
        Vendas('Iphone X', 4199.99),
        Vendas('Iphone X', 4199.99),
        Vendas('Galaxy s10', 3500.25),
      ],
    ),
  );

  //organizar lista de vendas
  vendedores.forEach(
      (element) => element.vendas.sort((b, a) => a.preco!.compareTo(b.preco!)));
  vendedores.forEach((e) => print(
      'Vendedor: #${e.nome} \t ${e.vendas.length} vendas \t Valor das vendas: ${e.vendas.map(
            (e) => e.preco,
          ).toList()}'));
}

///CLASSE VENDEDOR

class Vendedor {
  String? nome;
  List<Vendas> vendas;

  Vendedor(this.nome, this.vendas);
}

///CLASSE VENDAS

class Vendas {
  String? produtos;
  double? preco;

  Vendas(this.produtos, this.preco);
}
