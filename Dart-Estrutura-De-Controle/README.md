### <img src="https://gifs.eco.br/wp-content/uploads/2021/06/gifs-de-coracao-7.gif" width="30px"> Dart - Estrutura de Controle:
✅If/Else.
```
import 'dart:math';

main() {
  var nota = Random().nextInt(11);
  print("Nota selecionada foi $nota.");

  if (nota >= 9) {
    print('Quadro de Honra!');
  } else if (nota >= 7) {
    print('Aprovado!');
  } else if (nota >= 5){
    print('Recuperação!');
  } else if (nota >= 4) {
    print('Recuperação + Trabalho!');    
  } else {
    print('Reprovado');
  }
}
```
✅Desafio If/Else.
```
main(){
  
  var nota = 0.3;
  
  if(nota >= 9.0) // ; NÃO USA ; EM ESTRUTURAS DE CONTROLE *
  {
    print('Parabéns! Vc foi brilhante');
  }
  // * EXCEÇÃO DO/WHILE!!!
}
```
✅For #01.
```
main(){
  
   // Desafio For
   print("Desafio For");
  
   for(int a = 100; a >= 0; a -= 4){
     print("a = $a");
   } 
  
   print("---------\n");
  
   for(int a = 1; a <= 10; a += 2){
     print("a = $a"); 
   } 
  
   print("---------\n");
  
   int b = 0;
   for(; b <= 10; b++){
     print("b = $b");
   }
  
   print("[FORA] b = $b");
  
   print("Fim!");
  
   print("---------\n");
}

// Resultado 
Desafio For
a = 100
a = 96
a = 92
a = 88
a = 84
a = 80
a = 76
a = 72
a = 68
a = 64
a = 60
a = 56
a = 52
a = 48
a = 44
a = 40
a = 36
a = 32
a = 28
a = 24
a = 20
a = 16
a = 12
a = 8
a = 4
a = 0
---------

a = 1
a = 3
a = 5
a = 7
a = 9
---------

b = 0
b = 1
b = 2
b = 3
b = 4
b = 5
b = 6
b = 7
b = 8
b = 9
b = 10
[FORA] b = 11
Fim!
---------
```
✅For #02.
```
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
```
✅For #03.
```
main(){
  Map<String, double> notas = {
    'João Pedro': 9.1,
    'Maria Augusta': 7.2,
    'Ana Silva': 6.4,
    'Roberto Andrade': 8.8,
    'Pedro Firmino': 9.9,
  };
  
  for(String nome in notas.keys){
    print("Nome do aluno é $nome e a nota é ${notas[nome]}");
  }

  // Resultado
Nome do aluno é João Pedro e a nota é 9.1
Nome do aluno é Maria Augusta e a nota é 7.2
Nome do aluno é Ana Silva e a nota é 6.4
Nome do aluno é Roberto Andrade e a nota é 8.8
Nome do aluno é Pedro Firmino e a nota é 9.9
  
  
  for(double nota in notas.values){
    print("A nota é $nota");
  }

  // Resultado
A nota é 9.1
A nota é 7.2
A nota é 6.4
A nota é 8.8
A nota é 9.9
  
  for(var registro in notas.entries){
    print("${registro.key} tem nota ${registro.value}.");
  }
}

   // Resultado
João Pedro tem nota 9.1.
Maria Augusta tem nota 7.2.
Ana Silva tem nota 6.4.
Roberto Andrade tem nota 8.8.
Pedro Firmino tem nota 9.9.
```
✅For #04.
```
main(){
/*  
 
  #
  ##
  ###
  ####
  #####
  ######
    
  Use o laço FOR, mas não pode controlar o laço usando valor numérico!   
  
*/ 
  
  for(var a = '#'; a != '#######'; a+= '#'){
    print(a);
  }
}

/*  

Resultado

  #
  ##
  ###
  ####
  #####
  ######

*/
```
✅While.
```
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
```
✅Switch.
```
// O dart obriga usar o break;
// Usa Switch quando o valor é especifico.
// Quando não tem intervalos. 
// A condição é o próprio valor.

import 'dart:math';

main(){
  var nota = Random().nextInt(11);
  
  print('A nota sorteada foi $nota');
  
  switch(nota){
    case 10: 
    case 9:
      print('Quadro de Honra!');
      print('Parabéns!');
      break;
    case 8:
    case 7:  
      print('Aprovado!');
      break;
    case 6:
    case 5:
    case 4:  
      print('Recuperação!');
      break;  
    case 3:
    case 2:
    case 1:
    case 0:  
      print('Reprovado!');
      break;  
    default:
      print('Nota inválida!');
  }
  
  print('Fim!');
}
```
✅Break/Continue.
```
// ( break ) interrompe a execução. 
// Parar a Execução For.

// ( continue ) interrompe a execução que tenha a condição. 
// Ex: Condição imparis, interronpe e exibi números pares. 

main(){
 
  for(int a = 0; a < 10; a++){
    if(a == 6){
      break;
    }
    
    print(a);
  }
  
  print('Depois do laço for #01');
  
  
  for(int a = 0; a < 10; a++){
    if(a % 2 == 1){
      continue;
    }
    
    print(a);
  }
  
  print('Depois do laço for #02');
}
```
