import 'dart:math';

main() {
 
 int resultado = soma(2, 3); 
  
 resultado *= 2;
  
 print("O dobro do resultado é $resultado"); 
 // O dobro do resultado é 10
  
 print('O resultado é ${somarNumerosAleatorios()}'); 
 // O resultado é 4
  
}

/// Retorna paramentro de Saida.
/// Recebe parametro de Entrada.
int soma(int a, int b){
  return a + b;
}

/// Retorna paramentro de Saida.
/// Não Recebe parametro de Entrada.
int somarNumerosAleatorios(){
  int a = Random().nextInt(11);
  int b = Random().nextInt(11);
  return a + b;
}
