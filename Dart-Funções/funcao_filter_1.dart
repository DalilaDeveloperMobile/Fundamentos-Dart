main(){
  var notas = [8.2, 7.1, 6.2, 4.4, 3.9, 8.8, 9.1, 5.1];
  var notasBoas = [];

  for(var nota in notas) {
    if(nota >= 7){
      notasBoas.add(nota);
    }
  }

  print(notas);

  // Resultado
  // [8.2, 7.1, 6.2, 4.4, 3.9, 8.8, 9.1, 5.1]

  print(notasBoas);

  // Resultado
  // [8.2, 7.1, 8.8, 9.1]
}
