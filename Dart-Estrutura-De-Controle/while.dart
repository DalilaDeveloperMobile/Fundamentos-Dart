// Diferença For x While, For tem a quantidade determinada de tamanho na lista.
// Agente sabe quantas vezes o for irá execultar.

// Mas o While serve para quando não soubermos, quantas vezes irá execultar o código.
// Execulta até que a condição possa ser valida. 

// Se tiver quantidade determinada usa For.
// Se não tiver quantidade determinada usa o While. 

// Não pode usar o For igual a While porque o While existe.

main(){
  var digitado = '';
  
  while(digitado != 'sair'){
    stdout.write('Digite algo ou sair: ');
    digitado = stdin.readLineSync();
  }
  
  digitado = '';
  
  for(; digitado != 'sair';){
    stdout.write('Digite algo ou sair: ');
    digitado = stdin.readLineSync();
  }


// Do While é a única estrutura de repetição que usa ponto e virgula ( ; ).

while (digitado != 'sair');  

// E execulta uma vez sem passar por a condição.

digitado = '';
  
 do{
    stdout.write('Digite algo ou sair: ');
    digitado = stdin.readLineSync();
  } while (digitado != 'sair');  

print('Fim!');

}
