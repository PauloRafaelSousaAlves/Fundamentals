class PessoaGetter {
  static final PessoaGetter _instancia = PessoaGetter._construtorNOmeado();
  String? nome;

  PessoaGetter._construtorNOmeado();

  static PessoaGetter get instancia {
    return _instancia;
  }
}
