### <img src="https://gifs.eco.br/wp-content/uploads/2021/06/gifs-de-coracao-7.gif" width="30px"> Dart - Funções:
✅Algoritmo e Funções.
```
// A mesma função pode ser chamada em varios lugares no código.
// Chamando o nome da função, Ex: nome(). 
// A função pode ter parametro de entrada e saida.
// ( entrada = parametros ) e ( saida = return ).
```
✅Básico sobre Função #01.
```
import 'dart:math';

main() {
 
 somaComPrint(2, 3); 

 // Resultado
 // 5
  
 int c = 4;
 int d = 5;   
 somaComPrint(c, d); 

 // Resultado
 // 9 
  
 somaDoisNumerosQuaisquer(); 

 // Resultado
 // Os valores sorteados foram: 4 e 8.
 // 12
}

/// Não retorna nenhum paramentro de Saida.
/// Recebe parametro de Entrada.
void somaComPrint(int a, int b){
  print(a + b);
}

/// Não retorna nenhum paramentro de Saida.
/// Não Recebe parametro de Entrada.
void somaDoisNumerosQuaisquer(){
  int n1 = Random().nextInt(11);
  int n2 = Random().nextInt(11);
  print('Os valores sorteados foram: $n1 e $n2.');
  print(n1 + n2);
}
```
✅Básico sobre Função #02.
```
import 'dart:math';

main() {
 
 int resultado = soma(2, 3); 
  
 resultado *= 2;
  
 print("O dobro do resultado é $resultado"); 
 // O dobro do resultado é 10
  
 print('O resultado é ${somarNumerosAleatorios()}'); 
 // O resultado é 4
  
}

/// Retorna paramentro de Saida.
/// Recebe parametro de Entrada.
int soma(int a, int b){
  return a + b;
}

/// Retorna paramentro de Saida.
/// Não Recebe parametro de Entrada.
int somarNumerosAleatorios(){
  int a = Random().nextInt(11);
  int b = Random().nextInt(11);
  return a + b;
}
```
✅Parâmetros de Tipo Dinâmico.
```
main(){
  
  juntar(1, 9);

  // Resultado
  // 19
  
  juntar('Bom ', 'dia!!!');

  // Resultado
  // Bom dia!!!
  
  String resultado = juntar('O valor de PI é ', 3.1415);
  
  print(resultado.toUpperCase());

  // Resultado
  // O valor de PI é 3.1415
  // O VALOR DE PI É 3.1415
}


String juntar(dynamic a, b){
  print(a.toString() + b.toString());
  return a.toString() + b.toString();
}
```
✅Parâmetros Opcionais.
```
import 'dart:math';

main() {
  
  int n1 = numeroAleatorio(100);
  print(n1);

  // Resultado
  // 81
  
  int n2 = numeroAleatorio();
  print(n2);

  // Resultado
  // 9 
  
  imprimirData(10, 12, 2020);
  
  // Resultado
  // 10/12/2020  

  imprimirData(10, 12);

  // Resultado
  // 10/12/1970

  imprimirData(10);
 
  // Resultado
  // 10/1/1970 
}

// Parametros opcionais [] 
// E valor padrão (maximo = 11)
int numeroAleatorio([int maximo = 11]){
  return Random().nextInt(maximo);
}

imprimirData(int dia, [int mes = 1, int ano = 1970]){
  print('$dia/$mes/$ano');
}
```
✅Parâmetros Nomeados.
```
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
```
✅Função em Variável #01.
```
int somaFn(int a, int b) {
  return a + b;
}

main() {
  // tipo nome = valor;
  int Function(int, int) soma1 = somaFn;
  print(soma1(20, 313));
  
  // Resultado
  // 333

  var soma2 = ([int x = 1, int y = 1]) {
    return x + y;
  };

  print(soma2(20, 313));

  // Resultado
  // 333  

  print(soma2(20));

  // Resultado
  // 21

  print(soma2());

  // Resultado
  // 2
}
```
✅Função em Variável #02.
```
main() {
  
  var adicao = (int a, int b) => a + b;
  var subtracao = (int a, int b) => a - b;
  var mutiplicacao = (int a, int b) => a * b;
  var divisao = (int a, int b) => a / b;
  
  print(adicao(4, 19));

  // Resultado
  // 23

  print(subtracao(9, 13));

  // Resultado
  // -4

  print(mutiplicacao(9, 13));

  // Resultado
  // 117

  print(divisao(9, 13));

  // Resultado
  // 0.6923076923076923
}
```
✅Função como Parâmetro.
```
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
```
✅Retornar Função #01.
```
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
```
✅Retornar Função #02.
```
int Function(int) somaParcial(int a){
  int c = 0;
  
  return (int b){
    return a + b + c;
  };
}

main(){
  
  print(somaParcial(2)(10));

  // Resultado
  // 12
  
  var somaCom10 = somaParcial(10);
  
  print(somaCom10(3));

  // Resultado
  // 13

  print(somaCom10(7));

  // Resultado
  // 17

  print(somaCom10(19));

  // Resultado
  // 29
}
```
✅Função com Generics.
```
/// Object é um tipo de variavel generica.
/// Que engloba varios tipos de variaveis.
Object segundoElementoV1(List lista) {
  return lista.length >= 2 ? lista[1] : null;
}

/// E generics e um tipo indefinido generico.
/// Que engloba varios tipos de variaveis.
E? segundoElementoV2<E>(List<E> lista) {
  return lista.length >= 2 ? lista[1] : null;
}

main() {
  var lista = [3, 6, 7, 12, 45, 78, 1];

  print(segundoElementoV1(lista));
  
  // Resultado
  // 6

  int segundoElemento = segundoElementoV2<int>(lista)!;
  print(segundoElemento);
  
  // Resultado
  // 6

  segundoElemento = segundoElementoV2(lista)!;
  print(segundoElemento);
  
  // Resultado
  // 6
}
```
✅Função Filter #01.
```
main(){
  var notas = [8.2, 7.1, 6.2, 4.4, 3.9, 8.8, 9.1, 5.1];
  var notasBoas = [];

  for(var nota in notas) {
    if(nota >= 7){
      notasBoas.add(nota);
    }
  }

  print(notas);

  // Resultado
  // [8.2, 7.1, 6.2, 4.4, 3.9, 8.8, 9.1, 5.1]

  print(notasBoas);

  // Resultado
  // [8.2, 7.1, 8.8, 9.1]
}
```
✅Função Filter #02.
```
main(){
  var notas = [8.2, 7.1, 6.2, 4.4, 3.9, 8.8, 9.1, 5.1];
  
  var notasBoasFn = (double nota) => nota >= 7;
  var notasMuitoBoasFn = (double nota) => nota >= 8.8;
  
  var notasBoas = notas.where(notasBoasFn);
  var notasMuitoBoas = notas.where(notasMuitoBoasFn);
  
  print(notas);

  // Resultado
  // [8.2, 7.1, 6.2, 4.4, 3.9, 8.8, 9.1, 5.1]

  print(notasBoas);

  // Resultado
  // (8.2, 7.1, 8.8, 9.1)

  print(notasMuitoBoas);

  // Resultado
  // (8.8, 9.1)
}
```
✅Função Filter #03.
```
List<E> filtrar<E>(List<E> lista, bool Function(E) fn) {
  List<E> listaFiltrada = [];
  for(E elemento in lista){
    if(fn(elemento)){
      listaFiltrada.add(elemento);
    }
  }
  
  return listaFiltrada;
}

main(){
  
  var notas = [8.2, 7.3, 6.8, 5.4, 2.7, 9.3]; 
  var boasNotasFn = (double nota) => nota >= 7.5;
  
  var somenteNotasBoas = filtrar<double>(notas, boasNotasFn);
  print(somenteNotasBoas);

  // Resultado
  // [8.2, 9.3]
  
  var nomes = ['Ana', 'Bia', 'Rebeca', 'Gui', 'João'];
  var nomesGrandesFn = (String nome) => nome.length >= 5;
  print(filtrar(nomes, nomesGrandesFn));

  // Resultado
  // [Rebeca] 
}
```
✅Map & Reduce #01.
```
main() {
  var alunos = [
    {'nome': 'Alfredo', 'nota': 9.9},
    {'nome': 'Wilson', 'nota': 9.3},
    {'nome': 'Mariana', 'nota': 8.7},
    {'nome': 'Guilherme', 'nota': 8.1},
    {'nome': 'Ana', 'nota': 7.6},
    {'nome': 'Ricardo', 'nota': 6.8},
  ];

  /// map converte uma lista em outra lista.
  String Function(Map) pegarApenasONome = (aluno) => aluno['nome'];
  int Function(String) qtdeDeLetras = (texto) => texto.length;
  int Function(int) dobro = (numero) => numero * 2;

  var resultado = alunos.map(pegarApenasONome).map(qtdeDeLetras).map(dobro);

  print(resultado);

  // Resultado
  // (14, 12, 14, 18, 6, 14)
}
```
✅Map & Reduce #02.
```
main() {
  var notas = [7.3, 5.4, 7.7, 8.1, 5.5, 4.9, 9.1, 10.0];
  var total = notas.reduce(somar);
  print(total);

  /* 
     7.3 5.4
     12.7 7.7
     20.4 8.1
     28.5 5.5
     34 4.9
     38.9 9.1
     48 10
     58 
 */
  
 var foldNotas = notas.fold<double>(0.0, somar);
  print(foldNotas);

/* 
  0 7.3
  7.3 5.4
  12.7 7.7
  20.4 8.1
  28.5 5.5
  34 4.9
  38.9 9.1
  48 10
  58
*/
  
  var nomes = ['Ana', 'Bia', 'Carlos', 'Daniel', 'Maria', 'Pedro'];
  print(nomes.reduce(juntar));

/* 
 Ana => Bia
 Ana, Bia => Carlos
 Ana, Bia, Carlos => Daniel
 Ana, Bia, Carlos, Daniel => Maria
 Ana, Bia, Carlos, Daniel, Maria => Pedro
 Ana, Bia, Carlos, Daniel, Maria, Pedro
*/
  
  var nome = nomes.fold('', juntar);
  print(nome);

  /* 
   , Ana => Bia
   , Ana, Bia => Carlos
   , Ana, Bia, Carlos => Daniel
   , Ana, Bia, Carlos, Daniel => Maria
   , Ana, Bia, Carlos, Daniel, Maria => Pedro
   , Ana, Bia, Carlos, Daniel, Maria, Pedro
 */

}

  double somar(double acumulador, double elemento){
    print("$acumulador $elemento");
    return acumulador + elemento;
  }

  String juntar(String acumulador, String elemento){
    print("$acumulador => $elemento");
    return "$acumulador, $elemento";
  }

// Diferença do Reduce para o Fold: 
// É que o fold precisa de um valor inicial e o Reduce não precisa.
```
✅Map & Reduce #03.
```
main() {
  var alunos = [
    {'nome': 'Alfredo', 'nota': 9.9},
    {'nome': 'Wilson', 'nota': 9.3},
    {'nome': 'Mariana', 'nota': 8.7},
    {'nome': 'Guilherme', 'nota': 8.1},
    {'nome': 'Ana', 'nota': 7.6},
    {'nome': 'Ricardo', 'nota': 6.8},
  ];

  var notasFinais = alunos.map((aluno) => aluno['nota'])
    .map((nota) => (nota as double).roundToDouble())
    .where((nota) => nota >= 8.5);
  
    var total = notasFinais.reduce((t, a) => t + a);
 
   // var total = notasFinais.fold(0.0,(t, a) => t + a);

  print("O valor da média é: ${total / notasFinais.length}.");

  // Resultado
  // O valor da média é: 9.333333333333334. 

}
```
<h3 align="center"> Made with <img src="https://gifs.eco.br/wp-content/uploads/2021/06/gifs-de-coracao-7.gif" width="30px"> by Dalila...</h3>
<div align="center"  style="display: inline-block">
  <a href="https://www.linkedin.com/in/dalila-cust%C3%B3dio-046076181/" target="_blank"><img src="https://img.shields.io/badge/-LinkedIn-%230077B5?style=for-the-badge&logo=linkedin&logoColor=white" target="_blank"></a> 
  <a href = "mailto:dalila.dalila70@gmail.com"><img src="https://img.shields.io/badge/Gmail-D14836?style=for-the-badge&logo=gmail&logoColor=white" target="_blank"></a>
  <a href="https://instagram.com/dalila.dalila70" target="_blank"><img src="https://img.shields.io/badge/-Instagram-%23E4405F?style=for-the-badge&logo=instagram&logoColor=white" target="_blank"></a>
  <a target="_blank" href="https://api.whatsapp.com/send?phone=5588997138541"><img  alt="Whatsapp" width="117px" src="https://img.shields.io/badge/WhatsApp-25D366?style=for-the-badge&logo=whatsapp&logoColor=white"/></a> 
</div>
