main(){
  int a = 3;
  int b = 4;
  
  // Operadores Unários
  a++; // Posfix, não tem urgencia para ser execultado.
  --a; // Prefix, tem urgencia para ser execultado.
  
  print(a);
  
  print(a++ == --b);
  print(a == b);
  
  // Operador Lógico Unário (NOT)
  print(!true);
  print(!false);
  
  bool x = false;
  print(!x);
}
