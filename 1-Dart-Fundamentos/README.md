### <img src="https://gifs.eco.br/wp-content/uploads/2021/06/gifs-de-coracao-7.gif" width="30px"> Dart - Fundamentos:

✅ Constantes #01.
```
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
```
✅ Constantes #02.
```
main(){
  final lista = const ['Ana', 'Lia', 'Gui'];
  // Se a lista for (final) não pode atribuir uma nova lista.
  // lista = ['Banana','Maça'];
  
  // Se for (const) não pode adicionar um novo elemento.
  // lista.add('Rebeca');
  print(lista);
}
```
✅ Tipos Básicos #01.
```
  /* 
     - Números (int e double)
     - String (String)
     - Booleano (bool)
     - Num (num) Pai do double e int
     - dynamic
  */

main(){
  
  /// absolute n2.abs(), 
  /// alterar negativo para valor positivo.
  double n2 = (-3.20).abs();
  print(n2);
  
  /// diz o tipo variavel double
  print(n2.runtimeType); /// double
  
  /// false n2 não é int é double
  print(n2 is int); /// false
  
  /// converte de um valor string para double
  double n3 = double.parse("2.22");
  print(n3);
  
  /// converte de um valor string para int
  int n4 = int.parse("2");
  print(n4);
  
  String name = "Dalila Custódio Santana";
  
  /// Exibir nome Maiusculo
  print(name.toUpperCase());
  /// Exibir nome Minusculo
  print(name.toLowerCase());
  
  bool estaChovendo = true;
  bool muitoFrio = false;
  
  print(estaChovendo && muitoFrio);
  
  dynamic x = "Um texto bem legal";
  print(x);
  
  x = 123;
  print(x);
  
  x = false;
  print(x);
  
  var y = "Outro texto bem legal";
  /// com var não posso passar 
  /// outro valor que não seja String.
  /// y = 123;
  print(y);
}
``` 
✅ Tipos Básicos #02.
```
/*
  
   - List
   - Set
   - Map
  
*/

main() {
  // List
  var aprovados = ['Ana', 'Carlos', 'Daniel', 'Rafael'];
  print(aprovados is List);
  print(aprovados);
  print(aprovados.elementAt(2));
  print(aprovados[0]);
  print(aprovados.length);

  // Map
  Map<String, String> telefone = {
    'João': '+55 (11) 98765-4321',
    'Maria': '+55 (21) 12345-6789',
    'Pedro': '+55 (85) 45455-8989',
  };

  print(telefone is Map);
  print(telefone);
  print(telefone['João']);
  print(telefone.length);
  print(telefone.values);
  print(telefone.keys);
  print(telefone.entries);

  // Set
  var times = {'Vasco', 'Flamengo', 'Fortaleza', 'São Paulo'};
  
  print(times is Set);
  times.add('Palmeiras');
  print(times.length);
  print(times.contains('Vasco'));
  print(times.first);
  print(times.last);
}
```
✅ Notação Ponto.
```
main(){
  String s1 = "leonardo leitão".substring(0,8).toUpperCase().padRight(15,'!');
  print(s1);
}

// Resultado
// LEONARDO!!!!!!!
```
✅ Operadores #01.
```
main(){
  
 // Operadores Lógicos
 bool ehFragil = true;
 bool ehCaro = true;
  
 print(ehFragil && ehCaro); // AND -> E
 print(ehFragil || ehCaro); // OR -> OU
 print(ehFragil ^ ehCaro); // XOR -> OU Exclusivo
 print(!ehFragil); // NOT -> Unário/Prefix
 print(!!ehCaro); 
  
}
```
✅ Operadores #02.
```
main(){
  
 // Operadores Atribuição (binário/infix)
 double a = 2;
 a = a + 3;
 a += 3;
 a -= 3;
 a *= 3;
 a /= 5;
 a %= 2;
  
 print(a); 
  
  
 // Operadores Relacionais (binário/infix)
 print(3 > 2);
 print(3 >= 3);
 print(3 < 4);
 print(3 <= 3);
 print(3 != 3);
 print(3 == 3); 
 print(3 == '3');
  
 print(2 + 5 > 3 - 1 && 4 + 7 != 7 - 4); 
  
 // 101 = 5
 // 100 = 4
 // 100 = 4
 print(5 & 4); 
  
}
```
✅ Operadores #03.
```
main(){
  int a = 3;
  int b = 4;
  
  // Operadores Unários
  a++; // Posfix, não tem urgencia para ser execultado.
  --a; // Prefix, tem urgencia para ser execultado.
  
  print(a);
  
  print(a++ == --b);
  print(a == b);
  
  // Operador Lógico Unário (NOT)
  print(!true);
  print(!false);
  
  bool x = false;
  print(!x);
}
```
✅ Operadores #04.
```
import 'dart:io';

main(){
  
 stdout.write("Está chovendo? (s/N) ");
 bool estaChovendo = stdin.readLineSync() == "s"; 
  
 stdout.write("Está frio? (s/N) ");
 bool estaFrio = stdin.readLineSync() == "s"; 
  
 String resultado = estaChovendo && estaFrio ? "Ficar em casa" : "Sair!!!";
 print(resultado);
 print(estaChovendo && estaFrio ? "Azarado!" : "Sortudo!") 
}
```
✅ Interpolação.
```
main(){
  String nome = 'João';
  String status = 'aprovado';
  double nota = 9.2;
  
  String frase1 = nome + " está " + status + " pq tirou nota " + nota.toString() + "!";
  String frase2 = "$nome está $status pq tirou nota $nota!";

  print(frase1);
  print(frase2);
  
  print("30 * 30 = ${30 * 30}");
}

// Resultado
// João está aprovado pq tirou nota 9.2!
// João está aprovado pq tirou nota 9.2!
// 30 * 30 = 900
```
✅ Usando Generics.
```
main(){
 // List<String>, List<bool>, List<int>, List<double> e etc. 
 // < > Generics você pode atribuir qualquer tipo de variavel.
 // Generics não é do ponto de vista de quem programa, mas do ponto de 
 // vista de quem criou a tecnologia, Ex: arquivo map.dart
 // (abstract class Map<K, V>) 
    
  List<String> frutas = ['banana','maçã','laranja'];
  frutas.add('melão');
  
  print(frutas);
  
  Map<String, double> salarios = {
    'gerente': 19345.78,
    'vendedor': 16345.80,
    'estagiário': 600.00,
  };
  
  print(salarios);
}

// Resultado
// [banana, maçã, laranja, melão]
// {gerente: 19345.78, vendedor: 16345.8, estagiário: 600}
```
<h3 align="center"> Made with <img src="https://gifs.eco.br/wp-content/uploads/2021/06/gifs-de-coracao-7.gif" width="30px"> by Dalila...</h3>
<div align="center"  style="display: inline-block">
  <a href="https://www.linkedin.com/in/dalila-cust%C3%B3dio-046076181/" target="_blank"><img src="https://img.shields.io/badge/-LinkedIn-%230077B5?style=for-the-badge&logo=linkedin&logoColor=white" target="_blank"></a> 
  <a href = "mailto:dalila.dalila70@gmail.com"><img src="https://img.shields.io/badge/Gmail-D14836?style=for-the-badge&logo=gmail&logoColor=white" target="_blank"></a>
  <a href="https://instagram.com/dalila.dalila70" target="_blank"><img src="https://img.shields.io/badge/-Instagram-%23E4405F?style=for-the-badge&logo=instagram&logoColor=white" target="_blank"></a>
  <a target="_blank" href="https://api.whatsapp.com/send?phone=5588997138541"><img  alt="Whatsapp" width="117px" src="https://img.shields.io/badge/WhatsApp-25D366?style=for-the-badge&logo=whatsapp&logoColor=white"/></a> 
</div>
