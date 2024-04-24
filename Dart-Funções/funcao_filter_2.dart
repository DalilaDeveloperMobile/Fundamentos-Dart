main(){
  var notas = [8.2, 7.1, 6.2, 4.4, 3.9, 8.8, 9.1, 5.1];
  
  var notasBoasFn = (double nota) => nota >= 7;
  var notasMuitoBoasFn = (double nota) => nota >= 8.8;
  
  var notasBoas = notas.where(notasBoasFn);
  var notasMuitoBoas = notas.where(notasMuitoBoasFn);
  
  print(notas);

  // Resultado
  // [8.2, 7.1, 6.2, 4.4, 3.9, 8.8, 9.1, 5.1]

  print(notasBoas);

  // Resultado
  // (8.2, 7.1, 8.8, 9.1)

  print(notasMuitoBoas);

  // Resultado
  // (8.8, 9.1)
}
