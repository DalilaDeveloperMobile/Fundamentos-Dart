import 'dart:math';

main() {
 
 somaComPrint(2, 3); 

 // Resultado
 // 5
  
 int c = 4;
 int d = 5;   
 somaComPrint(c, d); 

 // Resultado
 // 9 
  
 somaDoisNumerosQuaisquer(); 

 // Resultado
 // Os valores sorteados foram: 4 e 8.
 // 12
}

/// Não retorna nenhum paramentro de Saida.
/// Recebe parametro de Entrada.
void somaComPrint(int a, int b){
  print(a + b);
}

/// Não retorna nenhum paramentro de Saida.
/// Não Recebe parametro de Entrada.
void somaDoisNumerosQuaisquer(){
  int n1 = Random().nextInt(11);
  int n2 = Random().nextInt(11);
  print('Os valores sorteados foram: $n1 e $n2.');
  print(n1 + n2);
}
