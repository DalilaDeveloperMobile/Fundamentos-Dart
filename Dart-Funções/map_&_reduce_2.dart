main() {
  var notas = [7.3, 5.4, 7.7, 8.1, 5.5, 4.9, 9.1, 10.0];
  var total = notas.reduce(somar);
  print(total);

  /* 
     7.3 5.4
     12.7 7.7
     20.4 8.1
     28.5 5.5
     34 4.9
     38.9 9.1
     48 10
     58 
 */
  
 var foldNotas = notas.fold<double>(0.0, somar);
  print(foldNotas);

/* 
  0 7.3
  7.3 5.4
  12.7 7.7
  20.4 8.1
  28.5 5.5
  34 4.9
  38.9 9.1
  48 10
  58
*/
  
  var nomes = ['Ana', 'Bia', 'Carlos', 'Daniel', 'Maria', 'Pedro'];
  print(nomes.reduce(juntar));

/* 
 Ana => Bia
 Ana, Bia => Carlos
 Ana, Bia, Carlos => Daniel
 Ana, Bia, Carlos, Daniel => Maria
 Ana, Bia, Carlos, Daniel, Maria => Pedro
 Ana, Bia, Carlos, Daniel, Maria, Pedro
*/
  
  var nome = nomes.fold('', juntar);
  print(nome);

  /* 
   , Ana => Bia
   , Ana, Bia => Carlos
   , Ana, Bia, Carlos => Daniel
   , Ana, Bia, Carlos, Daniel => Maria
   , Ana, Bia, Carlos, Daniel, Maria => Pedro
   , Ana, Bia, Carlos, Daniel, Maria, Pedro
 */

}

  double somar(double acumulador, double elemento){
    print("$acumulador $elemento");
    return acumulador + elemento;
  }

  String juntar(String acumulador, String elemento){
    print("$acumulador => $elemento");
    return "$acumulador, $elemento";
  }

// Diferença do Reduce para o Fold: 
// É que o fold precisa de um valor inicial e o Reduce não precisa.
