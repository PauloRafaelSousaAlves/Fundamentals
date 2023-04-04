class Usuario {
  bool alteracao = false;
  String? nome;
  String? _senha;

  Usuario(this.nome, String? senha) {
    this._senha = senha;
  }

  //GET padrão
  String? get senha {
    return _senha;
  }

  //SET padrão
  set senha(String? senha) {
    if (alteracao) {
      _senha = senha;
      print('Sucesso, senha alterada');
    } else {
      print('Acesso Negado!');
    }
  }
}
