// For in
main(){
  var notas = [8.9, 9.3, 7.8, 6.9, 9.1];
  
  for(var i = 0; i < notas.length; i++){
    print("Nota ${i + 1} = ${notas[i]}.");
  }
  
  print("-------------------\n");
  
  for(var nota in notas){
    print("O valor da nota é $nota");
  }
}

Nota 1 = 8.9.
Nota 2 = 9.3.
Nota 3 = 7.8.
Nota 4 = 6.9.
Nota 5 = 9.1.
-------------------

O valor da nota é 8.9
O valor da nota é 9.3
O valor da nota é 7.8
O valor da nota é 6.9
O valor da nota é 9.1
