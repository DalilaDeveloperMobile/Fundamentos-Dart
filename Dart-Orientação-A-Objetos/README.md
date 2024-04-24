### <img src="https://gifs.eco.br/wp-content/uploads/2021/06/gifs-de-coracao-7.gif" width="30px"> Dart - Orientação a Objetos:

✅O Básico sobre Classe.
```
class Data {
  int? dia;
  int? mes;
  int? ano;
}

main() {  
  var dataAniversario = Data();
  dataAniversario.dia = 3;
  dataAniversario.mes = 10;
  dataAniversario.ano = 2020;
  
  Data dataCompra = Data();
  dataCompra.dia = 23;
  dataCompra.mes = 12;
  dataCompra.ano = 2021;
  
  print("${dataAniversario.dia}/${dataAniversario.mes}/${dataAniversario.ano}");

  // Resultado
  // 3/10/2020

  print("${dataCompra.dia}/${dataCompra.mes}/${dataCompra.ano}");

 // Resultado
 // 23/12/2021
}
```
✅Métodos.
```
class Data {
  int? dia;
  int? mes;
  int? ano;
  
  String obterFormatada() {
    return "$dia/$mes/$ano";
  }
  
  String toString() {
    return obterFormatada();
  }
}

main() {  
  var dataAniversario = Data();
  dataAniversario.dia = 3;
  dataAniversario.mes = 10;
  dataAniversario.ano = 2020;
  
  Data dataCompra = Data();
  dataCompra.dia = 23;
  dataCompra.mes = 12;
  dataCompra.ano = 2021;
  
  String d1 = dataAniversario.obterFormatada();
  print("A data do aniversário é $d1");
  
  // Resultado
  // A data do aniversário é 3/10/2020
  
  print("A data da compra é ${dataCompra.obterFormatada()}");
  
  // Resultado
  // A data da compra é 23/12/2021
  
  print(dataCompra);
  
  // Resultado
  // 23/12/2021
  
  print(dataCompra.toString());
  
  // Resultado
  // 23/12/2021
  
  //print("${dataAniversario.dia}/${dataAniversario.mes}/${dataAniversario.ano}");

  // Resultado
  // 3/10/2020

  //print("${dataCompra.dia}/${dataCompra.mes}/${dataCompra.ano}");

 // Resultado
 // 23/12/2021
}
```
✅Construtores.
```
class Data {
  int? dia;
  int? mes;
  int? ano;
  
//   Data(int dia, int mes, int ano) {
//     this.dia = dia;
//     this.mes = mes;
//     this.ano = ano;
//   }
  
  Data([this.dia = 1, this.mes = 1, this.ano = 1970]);
  
  String obterFormatada() {
    return "$dia/$mes/$ano";
  }
  
  String toString() {
    return obterFormatada();
  }
}

main() {  
  var dataAniversario = Data(3, 10, 2020);
  
  Data dataCompra = Data(1, 1, 1970);
  // dataCompra.dia = 23;
  dataCompra.mes = 12;
  dataCompra.ano = 2021;
  
  print(Data());
  
  // Resultado
  // 1/1/1970
  
  print(Data(31));
  
  // Resultado
  // 31/1/1970
  
  print(Data(31, 12));
  
  // Resultado
  // 31/12/1970
  
  print(Data(31, 12, 2021));
  
  // Resultado
  // 31/12/2021
```
✅Construtores Nomeados.
```
class Data {
  int? dia;
  int? mes;
  int? ano;
  
  Data([this.dia = 1, this.mes = 1, this.ano = 1970]);
  
  // Named Constructors
  Data.com({this.dia = 1, this.mes = 1, this.ano = 1970});
  
  Data.ultimoDiaDoAno(this.ano){
    dia = 31;
    mes = 12;
  }
  
  
  String obterFormatada() {
    return "$dia/$mes/$ano";
  }
  
  String toString() {
    return obterFormatada();
  }
}

main() {  
  
  print(Data.com(ano: 2022));

  // Resultado
  // 1/1/2022
  
  var dataFinal = Data.com(dia: 12, mes: 7, ano: 2024);
  print("O Mickey será público em $dataFinal");

  // Resultado
  // O Mickey será público em 12/7/2024
  
  print(Data.ultimoDiaDoAno(2023));

  // Resultado
  // 31/12/2023
}
```
✅Desafio Classe Carro.
```
 /* 

  1) carro.dart
  Classe com construtor recebe a velocidade maxima...
  final int velocidadeMaxima;
  int velocidadeAtual;
  
  int acelerar() { ... } // +5
  int frear() { ... } // -5
  bool estaNoLimite()
  
  2) teste_carro.dart
  main
  
*/
```
✅Desafio Classe Carro - Resposta.
```
// carro.dart
class Carro {
  final int velocidadeMaxima;
  int velocidadeAtual = 0;
  
  Carro([this.velocidadeMaxima = 200]);
  
  int acelerar(){
    if(velocidadeAtual + 5 >= velocidadeMaxima){
      velocidadeAtual = velocidadeMaxima;
    } else {
      velocidadeAtual += 5;
    }
    return velocidadeAtual;
  }
  
  int frear(){
    if(velocidadeAtual - 5 <= 0){
      velocidadeAtual = 0;
    } else {
      velocidadeAtual -= 5;
    }
    return velocidadeAtual;
  }
  
  bool estaNoLimite(){
    return velocidadeAtual == velocidadeMaxima;
  }
  
   bool estaParado(){
    return velocidadeAtual == 0;
  }
}

// teste_carro.dart
// import '../modelo/carro.dart';

main() {
 
  var c1 = Carro(320);
  
  while(!c1.estaNoLimite()){
    print("A velocidade atual é ${c1.acelerar()} Km/h.");
  }
  
  print("O carro chegou no máximo com valocidade ${c1.velocidadeAtual} Km/h.");

 while(!c1.estaParado()){
   print("A velocidade atual é ${c1.frear()} Km/h.");
 }
  
  print("O carro parou com velocidade ${c1.velocidadeAtual} Km/h."); 
}

/* 
// Resultado
A velocidade atual é 5 Km/h.
A velocidade atual é 10 Km/h.
A velocidade atual é 15 Km/h.
A velocidade atual é 20 Km/h.
A velocidade atual é 25 Km/h.
A velocidade atual é 30 Km/h.
A velocidade atual é 35 Km/h.
A velocidade atual é 40 Km/h.
A velocidade atual é 45 Km/h.
A velocidade atual é 50 Km/h.
A velocidade atual é 55 Km/h.
A velocidade atual é 60 Km/h.
A velocidade atual é 65 Km/h.
A velocidade atual é 70 Km/h.
A velocidade atual é 75 Km/h.
A velocidade atual é 80 Km/h.
A velocidade atual é 85 Km/h.
A velocidade atual é 90 Km/h.
A velocidade atual é 95 Km/h.
A velocidade atual é 100 Km/h.
A velocidade atual é 105 Km/h.
A velocidade atual é 110 Km/h.
A velocidade atual é 115 Km/h.
A velocidade atual é 120 Km/h.
A velocidade atual é 125 Km/h.
A velocidade atual é 130 Km/h.
A velocidade atual é 135 Km/h.
A velocidade atual é 140 Km/h.
A velocidade atual é 145 Km/h.
A velocidade atual é 150 Km/h.
A velocidade atual é 155 Km/h.
A velocidade atual é 160 Km/h.
A velocidade atual é 165 Km/h.
A velocidade atual é 170 Km/h.
A velocidade atual é 175 Km/h.
A velocidade atual é 180 Km/h.
A velocidade atual é 185 Km/h.
A velocidade atual é 190 Km/h.
A velocidade atual é 195 Km/h.
A velocidade atual é 200 Km/h.
A velocidade atual é 205 Km/h.
A velocidade atual é 210 Km/h.
A velocidade atual é 215 Km/h.
A velocidade atual é 220 Km/h.
A velocidade atual é 225 Km/h.
A velocidade atual é 230 Km/h.
A velocidade atual é 235 Km/h.
A velocidade atual é 240 Km/h.
A velocidade atual é 245 Km/h.
A velocidade atual é 250 Km/h.
A velocidade atual é 255 Km/h.
A velocidade atual é 260 Km/h.
A velocidade atual é 265 Km/h.
A velocidade atual é 270 Km/h.
A velocidade atual é 275 Km/h.
A velocidade atual é 280 Km/h.
A velocidade atual é 285 Km/h.
A velocidade atual é 290 Km/h.
A velocidade atual é 295 Km/h.
A velocidade atual é 300 Km/h.
A velocidade atual é 305 Km/h.
A velocidade atual é 310 Km/h.
A velocidade atual é 315 Km/h.
A velocidade atual é 320 Km/h.
O carro chegou no máximo com valocidade 320 Km/h.
A velocidade atual é 315 Km/h.
A velocidade atual é 310 Km/h.
A velocidade atual é 305 Km/h.
A velocidade atual é 300 Km/h.
A velocidade atual é 295 Km/h.
A velocidade atual é 290 Km/h.
A velocidade atual é 285 Km/h.
A velocidade atual é 280 Km/h.
A velocidade atual é 275 Km/h.
A velocidade atual é 270 Km/h.
A velocidade atual é 265 Km/h.
A velocidade atual é 260 Km/h.
A velocidade atual é 255 Km/h.
A velocidade atual é 250 Km/h.
A velocidade atual é 245 Km/h.
A velocidade atual é 240 Km/h.
A velocidade atual é 235 Km/h.
A velocidade atual é 230 Km/h.
A velocidade atual é 225 Km/h.
A velocidade atual é 220 Km/h.
A velocidade atual é 215 Km/h.
A velocidade atual é 210 Km/h.
A velocidade atual é 205 Km/h.
A velocidade atual é 200 Km/h.
A velocidade atual é 195 Km/h.
A velocidade atual é 190 Km/h.
A velocidade atual é 185 Km/h.
A velocidade atual é 180 Km/h.
A velocidade atual é 175 Km/h.
A velocidade atual é 170 Km/h.
A velocidade atual é 165 Km/h.
A velocidade atual é 160 Km/h.
A velocidade atual é 155 Km/h.
A velocidade atual é 150 Km/h.
A velocidade atual é 145 Km/h.
A velocidade atual é 140 Km/h.
A velocidade atual é 135 Km/h.
A velocidade atual é 130 Km/h.
A velocidade atual é 125 Km/h.
A velocidade atual é 120 Km/h.
A velocidade atual é 115 Km/h.
A velocidade atual é 110 Km/h.
A velocidade atual é 105 Km/h.
A velocidade atual é 100 Km/h.
A velocidade atual é 95 Km/h.
A velocidade atual é 90 Km/h.
A velocidade atual é 85 Km/h.
A velocidade atual é 80 Km/h.
A velocidade atual é 75 Km/h.
A velocidade atual é 70 Km/h.
A velocidade atual é 65 Km/h.
A velocidade atual é 60 Km/h.
A velocidade atual é 55 Km/h.
A velocidade atual é 50 Km/h.
A velocidade atual é 45 Km/h.
A velocidade atual é 40 Km/h.
A velocidade atual é 35 Km/h.
A velocidade atual é 30 Km/h.
A velocidade atual é 25 Km/h.
A velocidade atual é 20 Km/h.
A velocidade atual é 15 Km/h.
A velocidade atual é 10 Km/h.
A velocidade atual é 5 Km/h.
A velocidade atual é 0 Km/h.
O carro parou com velocidade 0 Km/h.
 */
```
✅Getters/Setters.
```
// carro.dart
class Carro {
  final int velocidadeMaxima;
  int _velocidadeAtual = 0;
  
  Carro([this.velocidadeMaxima = 200]);
  
  int get velocidadeAtual {
    return this._velocidadeAtual;
  }
  
  void set velocidadeAtual(int novaVelocidade){
    bool deltaValido = (_velocidadeAtual - novaVelocidade).abs() <= 5;
    if(deltaValido && novaVelocidade >= 0){
      this._velocidadeAtual = novaVelocidade;
    }
  }
  
  int acelerar(){
    if(_velocidadeAtual + 5 >= velocidadeMaxima){
      _velocidadeAtual = velocidadeMaxima;
    } else {
      _velocidadeAtual += 5;
    }
    return _velocidadeAtual;
  }
  
  int frear(){
    if(_velocidadeAtual - 5 <= 0){
      _velocidadeAtual = 0;
    } else {
      _velocidadeAtual -= 5;
    }
    return _velocidadeAtual;
  }
  
  bool estaNoLimite(){
    return _velocidadeAtual == velocidadeMaxima;
  }
  
   bool estaParado(){
    return _velocidadeAtual == 0;
  }
}

// teste_carro.dart
// import '../modelo/carro.dart';

main() {
 
  var c1 = Carro(320);
  
  while(!c1.estaNoLimite()){
    print("A velocidade atual é ${c1.acelerar()} Km/h.");
  }
  
  print("O carro chegou no máximo com valocidade ${c1.velocidadeAtual} Km/h.");

 while(!c1.estaParado()){
   print("A velocidade atual é ${c1.frear()} Km/h.");
 }
  
  c1.velocidadeAtual = 3;
  print("O carro parou com velocidade ${c1.velocidadeAtual} Km/h.");
```
✅Composição #01.
```
// cliente.dart
class Cliente {
  String? nome;
  String? cpf;

  Cliente({
    this.nome,
    this.cpf,
  });
}

// produto.dart
class Produto {
  int? codigo;
  String? nome;
  double? preco;
  double desconto;

  Produto({
    this.codigo,
    this.nome,
    this.preco,
    this.desconto = 0,
  });
}

double get precoComDesconto {
  return (1 - desconto) * preco!;
}
```
✅Composição #02.
```
// cliente.dart
class Cliente {
  String? nome;
  String? cpf;

  Cliente({
    this.nome,
    this.cpf,
  });
}

// produto.dart
class Produto {
  int? codigo;
  String? nome;
  double? preco;
  double desconto;

  Produto({
    this.codigo,
    this.nome,
    this.preco,
    this.desconto = 0,
  });

  double get precoComDesconto {
    return (1 - desconto) * preco!;
  }
}

// venda_item.dart
class VendaItem {
  Produto? produto;
  int quantidade;
  double? _preco;

  VendaItem({this.produto, this.quantidade = 1});

  double get preco {
    if (produto != null && _preco == null) {
      _preco = produto!.precoComDesconto;
    }
    return _preco!;
  }
  
  void set preco(double novoPreco){
    if(novoPreco > 0){
      _preco = novoPreco;
    }
  }
}

// venda.dart
class Venda {
  Cliente? cliente;
  List<VendaItem> itens;
  
  Venda({this.cliente, this.itens = const []});
  
  double get valorTotal {
    return itens.map((item) => item.preco * item.quantidade).reduce((t, a) => t + a);
  }
}

// teste_venda.dart
main() {}
```
✅Composição #03.
```
// cliente.dart
class Cliente {
  String? nome;
  String? cpf;

  Cliente({
    this.nome,
    this.cpf,
  });
}

// produto.dart
class Produto {
  int? codigo;
  String? nome;
  double? preco;
  double desconto;

  Produto({
    this.codigo,
    this.nome,
    this.preco,
    this.desconto = 0,
  });

  double get precoComDesconto {
    return (1 - desconto) * preco!;
  }
}

// venda_item.dart
class VendaItem {
  Produto? produto;
  int quantidade;
  double? _preco;

  VendaItem({this.produto, this.quantidade = 1});

  double get preco {
    if (produto != null && _preco == null) {
      _preco = produto!.precoComDesconto;
    }
    return _preco!;
  }

  void set preco(double novoPreco) {
    if (novoPreco > 0) {
      _preco = novoPreco;
    }
  }
}

// venda.dart
class Venda {
  Cliente? cliente;
  List<VendaItem> itens;

  Venda({this.cliente, this.itens = const []});

  double get valorTotal {
    return itens
        .map((item) => item.preco * item.quantidade)
        .reduce((t, a) => t + a);
  }
}

// teste_venda.dart
main() {
  var vendaItem1 = VendaItem(
    quantidade: 30,
    produto: Produto(
      codigo: 1,
      nome: 'Lapis Preto',
      preco: 6.00,
      desconto: 0.5,
    ),
  );

  var venda = Venda(
    cliente: Cliente(
      nome: 'Franscisco Cardoso',
      cpf: '123.456.789-00',
    ),
    itens: <VendaItem>[
      vendaItem1,
      VendaItem(
        quantidade: 20,
        produto: Produto(
          codigo: 123,
          nome: 'Caderno',
          preco: 20.00,
          desconto: 0.25,
        ),
      ),
      VendaItem(
        quantidade: 100,
        produto: Produto(
          codigo: 52,
          nome: 'Borracha',
          preco: 2.00,
          desconto: 0.5,
        ),
      )
    ],
  );

  print("O valor total da venda é: R\$ ${venda.valorTotal}");
  print("Nome do primeiro produto é: ${venda.itens[0].produto!.nome}");
  print("O CPF do cliente é: ${venda.cliente!.cpf}");

  // Resultado

 // O valor total da venda é: R$ 490
 // Nome do primeiro produto é: Lapis Preto
 // O CPF do cliente é: 123.456.789-00 
    
}
```
<h3 align="center"> Made with <img src="https://gifs.eco.br/wp-content/uploads/2021/06/gifs-de-coracao-7.gif" width="30px"> by Dalila...</h3>
<div align="center"  style="display: inline-block">
  <a href="https://www.linkedin.com/in/dalila-cust%C3%B3dio-046076181/" target="_blank"><img src="https://img.shields.io/badge/-LinkedIn-%230077B5?style=for-the-badge&logo=linkedin&logoColor=white" target="_blank"></a> 
  <a href = "mailto:dalila.dalila70@gmail.com"><img src="https://img.shields.io/badge/Gmail-D14836?style=for-the-badge&logo=gmail&logoColor=white" target="_blank"></a>
  <a href="https://instagram.com/dalila.dalila70" target="_blank"><img src="https://img.shields.io/badge/-Instagram-%23E4405F?style=for-the-badge&logo=instagram&logoColor=white" target="_blank"></a>
  <a target="_blank" href="https://api.whatsapp.com/send?phone=5588997138541"><img  alt="Whatsapp" width="117px" src="https://img.shields.io/badge/WhatsApp-25D366?style=for-the-badge&logo=whatsapp&logoColor=white"/></a> 
</div>
