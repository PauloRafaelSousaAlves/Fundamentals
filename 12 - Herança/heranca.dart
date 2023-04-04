import 'animal.dart';

///
/// Regras => Uma classe pode ter somente uma herança
///
/// Construtores => Devem obedecer a ordem dos parametros
/// Parametros default devem ser nomeados ou posicionados
/// Tratamento e tipagem de parametros deve ser feito na classe herdeira
///

void main() {
  print('12.0 - Herança de atributos metodos e construtores');
  print('');

  var cao = Cao('Lory', 'Shitzu', 'Femea');
  print(
      'Nome: ${cao.nome}, raça: ${cao.raca}, sexo: ${cao.sexo}, idade: ${cao.idade}, dócil: ${cao.docil}');

  cao
    ..dormir()
    ..alimentar()
    ..acao();

  print('${cao.nome} ${cao.docil! ? 'está amigavel' : 'não está amigavel'}');
}
