int somaFn(int a, int b) {
  return a + b;
}

main() {
  // tipo nome = valor;
  int Function(int, int) soma1 = somaFn;
  print(soma1(20, 313));
  
  // Resultado
  // 333

  var soma2 = ([int x = 1, int y = 1]) {
    return x + y;
  };

  print(soma2(20, 313));

  // Resultado
  // 333  

  print(soma2(20));

  // Resultado
  // 21

  print(soma2());

  // Resultado
  // 2
}
