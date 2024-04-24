class Data {
  int? dia;
  int? mes;
  int? ano;
  
  Data([this.dia = 1, this.mes = 1, this.ano = 1970]);
  
  // Named Constructors
  Data.com({this.dia = 1, this.mes = 1, this.ano = 1970});
  
  Data.ultimoDiaDoAno(this.ano){
    dia = 31;
    mes = 12;
  }
  
  
  String obterFormatada() {
    return "$dia/$mes/$ano";
  }
  
  String toString() {
    return obterFormatada();
  }
}

main() {  
  
  print(Data.com(ano: 2022));

  // Resultado
  // 1/1/2022
  
  var dataFinal = Data.com(dia: 12, mes: 7, ano: 2024);
  print("O Mickey será público em $dataFinal");

  // Resultado
  // O Mickey será público em 12/7/2024
  
  print(Data.ultimoDiaDoAno(2023));

  // Resultado
  // 31/12/2023
}
