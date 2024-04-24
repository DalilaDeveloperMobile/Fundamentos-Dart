/// Object é um tipo de variavel generica.
/// Que engloba varios tipos de variaveis.
Object segundoElementoV1(List lista) {
  return lista.length >= 2 ? lista[1] : null;
}

/// E generics e um tipo indefinido generico.
/// Que engloba varios tipos de variaveis.
E? segundoElementoV2<E>(List<E> lista) {
  return lista.length >= 2 ? lista[1] : null;
}

main() {
  var lista = [3, 6, 7, 12, 45, 78, 1];

  print(segundoElementoV1(lista));
  
  // Resultado
  // 6

  int segundoElemento = segundoElementoV2<int>(lista)!;
  print(segundoElemento);
  
  // Resultado
  // 6

  segundoElemento = segundoElementoV2(lista)!;
  print(segundoElemento);
  
  // Resultado
  // 6
}
