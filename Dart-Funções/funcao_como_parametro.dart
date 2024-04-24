import 'dart:math';

void executar({Function? fnPar, Function? fnImpar}){
  var sorteado = Random().nextInt(10);
  print('O valor sorteado foi $sorteado');
  sorteado % 2 == 0 ? fnPar!() : fnImpar!();
}


int executarPor(int qtde, String Function(String) fn, String valor){
  String textoCompleto = '';
  for(int i = 0; i < qtde; i++){
   textoCompleto += fn(valor);
  }
  
  return textoCompleto.length;
}


main() {
  var minhaFnPar = () => print('Eita! O valor é par!');
  var minhaFnImpar = () => print('Legal! O valor é ímpar!');
  
  executar(fnPar: minhaFnPar, fnImpar: minhaFnImpar);

  // Resultado
  // O valor sorteado foi 7
  // Legal! O valor é ímpar!
  
  var meuPrint = (String valor){
    print(valor);
    return valor;
  };
  
 int tamanho = executarPor(10, meuPrint, 'Muito legal');

 // Resultado
 // imprimir 'Muito legal' 10 vezes  
  
 print('O tamanho da string é $tamanho'); 

 // Resultado
 // O tamanho da string é 110 
}
