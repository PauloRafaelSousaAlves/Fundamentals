import 'dart:convert';

///
/// Conceito:
///     UTF8 => Binario que representa qualquer caractere universal
///     Base64 => Codificação de dados para transferencia na internet -> https://www.base64encode.org/
/// 

void main() {
  print('20.4.0 - Encode base64 & utf8');
  print('');

  String email = 'rm@gmail.com';

  //ENCODE
  //convertendo a string email para a representação de cada caracter
  List<int> ebytes = utf8.encode(email);
  String codificado = base64.encode(ebytes);
  print(codificado);
  print('');

  //DECODE
  List<int> dbytes = base64.decode(codificado);
  String decoficado = utf8.decode(dbytes);
  print(decoficado);
}
