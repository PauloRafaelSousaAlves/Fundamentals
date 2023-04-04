import '../13 - Sobrescritas/animal.dart';

///
/// Metodos (override/sobreposição != overload/sobrecarga)
/// Override - Temos sobrescrito dos metodos da classe pai na classe herdeira
///
/// Construtores => super se refere ao construtr da classe herdeira
///
/// Classes Abstratas:
/// Não podem ser instanciadas, servem apenas como modelo
/// Metodo sem escopo devem ser sobrescritos nas classes herdeiras
///
///

void main() {
  print('13.0 - Sobrescritas de metodos, atributos e construtores');
  print('');

  var cao = Cao.domestico('Lory', 'Shitzu', 'Femea');
  print(
      'Nome: ${cao.nome}, raça: ${cao.raca}, sexo: ${cao.sexo}, idade: ${cao.idade}, dócil: ${cao.docil}');
  print(
      'Desenvolvimento: ${cao.desenvolvimento}, tipo: ${cao.coluna! ? 'Vertebrado' : 'Invertebrado'}');
  cao
    ..dormir()
    ..alimentar()
    ..reproduzir()
    ..acao();

  print('${cao.nome} ${cao.docil! ? 'está amigavel' : 'não está amigavel'}');
}
