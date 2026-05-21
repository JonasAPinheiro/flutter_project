// ignore_for_file: public_member_api_docs, sort_constructors_first
class Produto {
  late int id;
  late String nome;
  late double preco;

  Produto({
    required this.id,
    required this.nome,
    required this.preco,
  });

  static List<Produto> gerarLista() {
    return [
      Produto(id: 1, nome: "Produto 1", preco: 10.99),
      Produto(id: 2, nome: "Produto 2", preco: 0.50),
      Produto(id: 3, nome: "Produto 3", preco: 5.00),
      Produto(id: 4, nome: "Produto 4", preco: 6.90),
      Produto(id: 5, nome: "Produto 5", preco: 8.00),
      Produto(id: 6, nome: "Produto 6", preco: 3.50),
      Produto(id: 7, nome: "Produto 7", preco: 14.00),
      Produto(id: 8, nome: "Produto 8", preco: 1.50),
      Produto(id: 9, nome: "Produto 9", preco: 30.00),
      Produto(id: 10, nome: "Produto 10", preco: 15.50),
      Produto(id: 11, nome: "Produto 11", preco: 9.99),
    ];
  }
}
