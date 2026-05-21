import 'package:flutter/material.dart';
import 'package:flutter_teste/aula12/model/carrinho_model.dart';
import 'package:provider/provider.dart';

class PedidoView extends StatelessWidget {
  const PedidoView({super.key});

  @override
  Widget build(BuildContext context) {
    var carrinho = context.watch<CarrinhoModel>();

    return Scaffold(
      body: Column(
        children: [
          ListView.builder(
            shrinkWrap: true,
            itemCount: carrinho.numProdutos,
            itemBuilder: (context, idx) {
              var produto = carrinho.produtos[idx];
              return Padding(
                padding: EdgeInsetsGeometry.all(8.0),
                child: Row(
                  mainAxisAlignment: .spaceBetween,
                  children: [
                    Text(produto.nome),
                    Text("R\$ ${produto.preco.toStringAsFixed(2)}"),
                  ],
                ),
              );
            },
          ),
          Divider(),
          Container(
            alignment: .bottomEnd,
            padding: EdgeInsets.all(8.0),
            child: Text("Valor Total \t\tR\$ ${carrinho.valorTotal}"),
          ),
        ],
      ),
    );
  }
}
