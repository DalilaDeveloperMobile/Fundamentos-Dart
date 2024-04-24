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
