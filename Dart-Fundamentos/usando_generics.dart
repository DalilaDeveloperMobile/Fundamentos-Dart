main(){
 // List<String>, List<bool>, List<int>, List<double> e etc. 
 // < > Generics você pode atribuir qualquer tipo de variavel.
 // Generics não é do ponto de vista de quem programa, mas do ponto de 
 // vista de quem criou a tecnologia, Ex: arquivo map.dart
 // (abstract class Map<K, V>) 
    
  List<String> frutas = ['banana','maçã','laranja'];
  frutas.add('melão');
  
  print(frutas);
  
  Map<String, double> salarios = {
    'gerente': 19345.78,
    'vendedor': 16345.80,
    'estagiário': 600.00,
  };
  
  print(salarios);
}

// Resultado
// [banana, maçã, laranja, melão]
// {gerente: 19345.78, vendedor: 16345.8, estagiário: 600}
