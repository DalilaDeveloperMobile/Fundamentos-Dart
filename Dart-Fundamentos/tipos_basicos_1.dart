 /* 
     - Números (int e double)
     - String (String)
     - Booleano (bool)
     - Num (num) Pai do double e int
     - dynamic
  */

main(){
  
  /// absolute n2.abs(), 
  /// alterar negativo para valor positivo.
  double n2 = (-3.20).abs();
  print(n2);
  
  /// diz o tipo variavel double
  print(n2.runtimeType); /// double
  
  /// false n2 não é int é double
  print(n2 is int); /// false
  
  /// converte de um valor string para double
  double n3 = double.parse("2.22");
  print(n3);
  
  /// converte de um valor string para int
  int n4 = int.parse("2");
  print(n4);
  
  String name = "Dalila Custódio Santana";
  
  /// Exibir nome Maiusculo
  print(name.toUpperCase());
  /// Exibir nome Minusculo
  print(name.toLowerCase());
  
  bool estaChovendo = true;
  bool muitoFrio = false;
  
  print(estaChovendo && muitoFrio);
  
  dynamic x = "Um texto bem legal";
  print(x);
  
  x = 123;
  print(x);
  
  x = false;
  print(x);
  
  var y = "Outro texto bem legal";
  /// com var não posso passar 
  /// outro valor que não seja String.
  /// y = 123;
  print(y);
}
