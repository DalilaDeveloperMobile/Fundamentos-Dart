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
