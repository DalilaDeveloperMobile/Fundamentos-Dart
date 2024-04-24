import 'dart:math';

main() {
  
  int n1 = numeroAleatorio(100);
  print(n1);

  // Resultado
  // 81
  
  int n2 = numeroAleatorio();
  print(n2);

  // Resultado
  // 9 
  
  imprimirData(10, 12, 2020);
  
  // Resultado
  // 10/12/2020  

  imprimirData(10, 12);

  // Resultado
  // 10/12/1970

  imprimirData(10);
 
  // Resultado
  // 10/1/1970 
}

// Parametros opcionais [] 
// E valor padrão (maximo = 11)
int numeroAleatorio([int maximo = 11]){
  return Random().nextInt(maximo);
}

imprimirData(int dia, [int mes = 1, int ano = 1970]){
  print('$dia/$mes/$ano');
}
