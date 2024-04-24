/* 
  
Ex1:
 
 funcao(p1, p2) {
 
    // 10s -> p1
    sentenca #01
    sentenca #02
    sentenca #03
    
    // 1s -> p2
    sentenca #04
    sentenca #05
 
 }
 
   funcao(3, 17) // 11s
   funcao(3, 39) // 11s
   funcao(3, 92) // 11s
   
   Total: 33s
 
Ex2:

 funcaoFora(p1){
    
    // 10s -> p1
    sentenca #01
    sentenca #02
    sentenca #03
    
    return (p2){
        // 1s -> p2
        sentenca #04
        sentenca #05
    }
 }
 
 var funcaoForaComParam3 = funcaoFora(3) // 10s
 funcaoForaComParam3(17) // 1s
 funcaoForaComParam3(39) // 1s
 funcaoForaComParam3(92) // 1s
 
 Total: 13s
 
 */
