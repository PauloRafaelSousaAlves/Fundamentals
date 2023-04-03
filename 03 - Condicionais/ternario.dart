void main() {
  print('03.1 - Ternário');
  print('');

  //O ternario nada mais é que um if / else, porem feito para fazer verificações mais rapidas
  //Assim como o if / else o ternário faz um teste lógico boleano verdadeiro ou falso mas com uma sintaxe reduzida!

  //EXEMPLO:

//Aqui está sendo feito com if / else
  if (!true) {
    print('verdadeiro');
  } else {
    print('falso');
  }
  print('');

//Aqui neste exemplo podemos ver que é exatamente um if / else, porem escrito de forma mais objetiva.
//colocamos a validação, e separamos pelo ponto de interrogação, se for isso executamos o que esta asseguir do ponto de interrogação
//se for aquilo, executamos o que está após os dois pontos.

  print('${!true ? 'Verdadeiro' : 'falso'} \n');

//EXEMPLOS
//aqui estamos fazendo duas verificações:
  int idade = 17;
  print((idade < 14)
      ? 'Criança'
      : (idade < 18)
          ? 'Adolecente'
          : 'Adulto');
  print('');

  int nota = 70;
  String resultado = (nota < 40)
      ? 'reprovado'
      : (nota < 70)
          ? 'recuperação'
          : 'aprovado!';
  print(resultado);
  print('');

  int numero = 12;
  int multiplo = 3;
  print(
      'Numero: $numero é ${(numero % 2 == 0) ? 'par' : 'impar'} e ${(numero >= 0) ? 'positivo' : 'negativo'}!');
  print(
      'Numero: $numero ${(numero % multiplo == 0) ? 'é' : 'não é'} multiplo de $multiplo \n');

//Logica relacional utilizando o ternario
  int ano = 1994;
  print(
      'Ano: $ano ${(ano % 4 == 0 || ano % 400 == 0 && ano % 100 != 0) ? 'é bissexto' : 'não é bissexto'}');
}
