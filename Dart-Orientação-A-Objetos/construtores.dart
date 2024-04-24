class Data {
  int? dia;
  int? mes;
  int? ano;
  
//   Data(int dia, int mes, int ano) {
//     this.dia = dia;
//     this.mes = mes;
//     this.ano = ano;
//   }
  
  Data([this.dia = 1, this.mes = 1, this.ano = 1970]);
  
  String obterFormatada() {
    return "$dia/$mes/$ano";
  }
  
  String toString() {
    return obterFormatada();
  }
}

main() {  
  var dataAniversario = Data(3, 10, 2020);
  
  Data dataCompra = Data(1, 1, 1970);
  // dataCompra.dia = 23;
  dataCompra.mes = 12;
  dataCompra.ano = 2021;
  
  print(Data());
  
  // Resultado
  // 1/1/1970
  
  print(Data(31));
  
  // Resultado
  // 31/1/1970
  
  print(Data(31, 12));
  
  // Resultado
  // 31/12/1970
  
  print(Data(31, 12, 2021));
  
  // Resultado
  // 31/12/2021
