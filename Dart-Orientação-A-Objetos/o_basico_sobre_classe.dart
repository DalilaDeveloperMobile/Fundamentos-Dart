class Data {
  int? dia;
  int? mes;
  int? ano;
}

main() {  
  var dataAniversario = Data();
  dataAniversario.dia = 3;
  dataAniversario.mes = 10;
  dataAniversario.ano = 2020;
  
  Data dataCompra = Data();
  dataCompra.dia = 23;
  dataCompra.mes = 12;
  dataCompra.ano = 2021;
  
  print("${dataAniversario.dia}/${dataAniversario.mes}/${dataAniversario.ano}");

  // Resultado
  // 3/10/2020

  print("${dataCompra.dia}/${dataCompra.mes}/${dataCompra.ano}");

 // Resultado
 // 23/12/2021
}
