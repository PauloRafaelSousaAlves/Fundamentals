///
/// Classes => objetos
/// Variaveis => atributos
/// Funções => métodos
///


class Usuario {
  String? usuario;
  String? senha;

  void autenticar() {
    //obs: essas variaveis usuario e senha, não são os atributos da classe:
    //simulando os dados recuperados;

    var usuario = 'fma@gmail.com';
    var senha = '123456';

    //aqui estamos usando o this, para pegar o atributo da classe.
    if (this.usuario == usuario && this.senha == senha) {
      print('Usuário autenticado! \n');
    } else {
      print('Usuário não autenticado! \n');
    }
  }
}