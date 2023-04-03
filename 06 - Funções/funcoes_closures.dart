///
///Uma closure ocorre quando uma função é declarada dentro do corpo de outra função!
///podendo retornar as variaveis locais e da função superior
///

funcaoClosures() {
  print('06.5.1 - Funções Closures sem retorno');
  print('');

  var saudacao = (String nome) {
    var mensagem = (complemento) => print('Olá $nome! $complemento');
    mensagem('Seja bem vindo!');
  };

  saudacao('Rafael');

  print('');
  print('06.5.2 - Funções Closures com retorno');
  print('');

  Function somar(int valorA) {
    print('valorA = $valorA');
    return (valorB) {
      print('valorB = $valorB');
      return valorA + valorB;
    };
  }

  var somarDez = somar(10);
  print('Total = ${somarDez(5)}');
  print('');

  //uma função dentro do corpo de outra função = closure
  Function porcentagem(desconto) => (valor) => desconto * valor;

  //aqui esta deixando pré configurado a closure
  var descontarDez = porcentagem(.9);
  var descontarVinte = porcentagem(0.8);

  //aqui passamos o valor a ser descontado entre parametro
  print(descontarDez(100));
  print(descontarVinte(200));

  print('');
  print('06.5.3 - Funções Closures com objetos');
  print('');

  //aqui temos uma função anonima dentro de outra função anonima

  var novoObjeto = () {
    var id = 0;
    var objetoCriado = (String nome, descricao) {
      ///temos dois exemplos de como podemos retornar os valores:

      return 'id: ${(++id).toString().padLeft(2, '0')}, nome: $nome, descrição: $descricao';

      ///retornando como um Map:
      
      // return Objeto.fromMap({
      //   'id': (++id).toString().padLeft(2, '0'),
      //   'nome': nome,
      //   'descrição': descricao
      // });
    };
    return objetoCriado;
  };

  var objeto = novoObjeto();
  print(objeto);
  print('');

  var listaObjetos = [objeto('Rafael', 1.99)];
  listaObjetos.add(objeto('Iphone', 3000.00));
  listaObjetos.add(objeto('Fones', 100.00));

  for (var objeto in listaObjetos) {
    print(objeto);
  }
  print('');
  for (var objeto in listaObjetos) {
    print(objeto.substring(7));
  }
}

//uma classe para retornar um objeto
class Objeto {
  String id;
  String nome;
  dynamic descricao;
  Objeto({
    required this.id,
    required this.nome,
    required this.descricao,
  });

  factory Objeto.fromMap(Map<String, dynamic> map) {
    return Objeto(
      id: map['id'].toString(),
      nome: map['nome'],
      descricao: map['descricao'],
    );
  }
}

void main() {
  funcaoClosures();
}
