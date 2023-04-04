class Calculos {
  double pi = 3.14;
  static double piStatic = 3.14;

  double areaCirculo(double raio) {
    return pi * (raio * raio);
  }

//Exemplo Static -> puxando o atributo estatico
  static double areaCirculoStatic(double raio) {
    return piStatic * (raio * raio);
  }
}
