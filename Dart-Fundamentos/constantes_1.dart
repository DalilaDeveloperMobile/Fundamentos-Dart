main(){

 final String name = "Ismael";
  
 /* Variavel ( final ) não recebe outro nome.  
  Erro em tentar receber nome. */
 name = "Dalila";
  
 /* 
 ( const ) Em tempo de Compilação.
 Execulta uma vez, o nome não altera.

 ( final ) Em tempo de Execução.
 Não pode receber nome com mesma variavel em tempo de ( Execução ).
 Pode receber nome com mesma variavel em tempo de ( Compilação ).

 Não pode criar uma ( const ) se variavel for ( final ).
 Não pode criar uma ( const ) com ( var ).
 Não pode criar uma ( final ) com ( var ). */
}
