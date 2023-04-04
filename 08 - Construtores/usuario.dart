class Usuario {
  String? user;
  String? senha;
  String? nome;
  String? cargo;
  int? idade;

//construtor default:
  Usuario(this.user, this.senha, {this.nome, String? cargo}) {
    this.nome = (nome == null) ? 'sem nome' : nome;
    this.cargo = (cargo == null) ? 'Usuario' : cargo;
    print(
        'Construtor resumido com parametros nomeados default! ${this.toString()}');
  }

//construtor nomeado e personalizado:
  Usuario.admin(this.user, this.senha, {this.nome}) {
    this.nome = (nome == null) ? 'sem nome' : nome;
    this.cargo = 'Administrador';
    print(
        'Construtor resumido com parametros nomeados default! ${this.toString()}');
  }

  void autenticar() {
    //simulação de recuperação de dados:
    var user = 'fma@gmail.com';
    var senha = '123456';
    (this.user == user && this.senha == senha)
        ? print('Usuario autenticado')
        : print('Usuario não autenticado');
  }
}