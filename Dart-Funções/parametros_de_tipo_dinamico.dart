main(){
  
  juntar(1, 9);

  // Resultado
  // 19
  
  juntar('Bom ', 'dia!!!');

  // Resultado
  // Bom dia!!!
  
  String resultado = juntar('O valor de PI é ', 3.1415);
  
  print(resultado.toUpperCase());

  // Resultado
  // O valor de PI é 3.1415
  // O VALOR DE PI É 3.1415
}


String juntar(dynamic a, b){
  print(a.toString() + b.toString());
  return a.toString() + b.toString();
}
