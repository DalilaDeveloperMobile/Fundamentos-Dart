main() {
  saudarPessoas(nome: "João", idade: 33);

  // Resultado
  // Olá João nem parece que vc tem 33 anos.

  saudarPessoas(idade: 47, nome: "Maria");

  // Resultado
  // Olá Maria nem parece que vc tem 47 anos.
  
  imprimirData(7);

  // Resultado
  // 7/1/1970

  imprimirData(7,ano: 2020);

  // Resultado
  // 7/1/2020

  imprimirData(7,ano: 2021, mes: 12);

  // Resultado
  // 7/12/2021
}

saudarPessoas({String? nome, int? idade}) {
  print("Olá $nome nem parece que vc tem $idade anos.");
}

imprimirData(int dia, {int ano = 1970, int mes = 1}){
  print('$dia/$mes/$ano');
}
