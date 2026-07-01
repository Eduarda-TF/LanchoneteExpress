import 'package:flutter/material.dart';
import '../widgets/card_produto.dart';
import 'tela_detalhes.dart';
import 'tela_pedidos.dart';

class TelaInicial extends StatelessWidget {
  const TelaInicial({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Lanchonete Express"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              const Text(
                "Bem-vindo à Lanchonete Express!",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 20),

              CardProduto(
                nome: "X-Burguer",
                preco: "R\$ 18,00",
                descricao: "Pão, carne, queijo e molho especial.",
                aoClicar: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const TelaDetalhes(
                        nome: "X-Burguer",
                        preco: "R\$ 18,00",
                        descricao:
                            "Pão, carne, queijo e molho especial.",
                      ),
                    ),
                  );
                },
              ),

              CardProduto(
                nome: "Batata Frita",
                preco: "R\$ 12,00",
                descricao: "Porção individual crocante.",
                aoClicar: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const TelaDetalhes(
                        nome: "Batata Frita",
                        preco: "R\$ 12,00",
                        descricao: "Porção individual crocante.",
                      ),
                    ),
                  );
                },
              ),

              CardProduto(
                nome: "Suco Natural",
                preco: "R\$ 8,00",
                descricao: "Suco gelado da fruta.",
                aoClicar: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const TelaDetalhes(
                        nome: "Suco Natural",
                        preco: "R\$ 8,00",
                        descricao: "Suco gelado da fruta.",
                      ),
                    ),
                  );
                },
              ),

              CardProduto(
                nome: "Combo Especial",
                preco: "R\$ 28,00",
                descricao: "X-Burguer, batata e suco.",
                aoClicar: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const TelaDetalhes(
                        nome: "Combo Especial",
                        preco: "R\$ 28,00",
                        descricao: "X-Burguer, batata e suco.",
                      ),
                    ),
                  );
                },
              ),

              const SizedBox(height: 20),

              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  child: const Text("Fazer Pedido"),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const TelaPedido(),
                      ),
                    );
                  },
                ),
              ),

              const SizedBox(height: 10),

              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  child: const Text("Ver promoção"),
                  onPressed: () {
                    showModalBottomSheet(
                      context: context,
                      builder: (context) {
                        return const Padding(
                          padding: EdgeInsets.all(20),
                          child: Text(
                            "🎉 Promoção do dia!\n\n"
                            "Na compra de um X-Burguer, "
                            "o Suco Natural sai pela metade do preço!",
                            style: TextStyle(fontSize: 18),
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

