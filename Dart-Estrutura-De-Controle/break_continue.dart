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
