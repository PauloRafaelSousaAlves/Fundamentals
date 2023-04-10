///
/// Biblioteca: https://pub.dev/packages/http
/// ViaCep API: https://viacep.com.br/
///
import 'dart:convert';

import 'package:http/http.dart' as http;

void main() async {
  String url = 'https://viacep.com.br/ws/01001000/json/';

  ///MODELO DO JSON
  /*
{
  "cep": "01001-000",
  "logradouro": "Praça da Sé",
  "complemento": "lado ímpar",
  "bairro": "Sé",
  "localidade": "São Paulo",
  "uf": "SP",
  "ibge": "3550308",
  "gia": "1004",
  "ddd": "11",
  "siafi": "7107"
}
   */

//Para conseguir usar uma String no HTTP, precisamos transformar ela assim:

// http.get(someString)	- http.get(Uri.parse(someString))
// http.post(someString)-	http.post(Uri.parse(someString))

// var response = await http.get(url); // ERRADO

  try {
    var response = await http.get(Uri.parse(url)); // CORRETO
    // print('STATUS: ${response.statusCode}');
    // print('STATUS: ${response.body} \n');

    ///DECODE
    if (response.statusCode == 200) {
      Map<String, dynamic> parsedJson = jsonDecode(response.body);
      Cep cep = Cep.fromJson(parsedJson);
      print('ParsedJson: $parsedJson');
      print('Objeto: ${cep.logradouro}\n');

      ///ENCODE
      Map<String, dynamic> map = cep.toJson();
      String toJson = jsonEncode(map);
      print('ToJson: $toJson');
    } else {
      throw Exception(
          'Erro ao obter dados:\nStatusCode: ${response.statusCode}');
    }
  } catch (e) {
    print(e);
  }
}

class Cep {
  String? cep;
  String? logradouro;
  String? complemento;
  String? bairro;
  String? localidade;
  String? uf;
  String? ibge;
  String? gia;
  String? ddd;
  String? siafi;

  Cep(
      {this.cep,
      this.logradouro,
      this.complemento,
      this.bairro,
      this.localidade,
      this.uf,
      this.ibge,
      this.gia,
      this.ddd,
      this.siafi});

  Cep.fromJson(Map<String, dynamic> json) {
    cep = json['cep'];
    logradouro = json['logradouro'];
    complemento = json['complemento'];
    bairro = json['bairro'];
    localidade = json['localidade'];
    uf = json['uf'];
    ibge = json['ibge'];
    gia = json['gia'];
    ddd = json['ddd'];
    siafi = json['siafi'];
  }

  Map<String, dynamic> toJson() {
    return {
      'cep': cep,
      'logradouro': logradouro,
      'complemento': complemento,
      'bairro': bairro,
      'localidade': localidade,
      'uf': uf,
      'ibge': ibge,
      'gia': gia,
      'ddd': ddd,
      'siafi': siafi,
    };
  }
}
