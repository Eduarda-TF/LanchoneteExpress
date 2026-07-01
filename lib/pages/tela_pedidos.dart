import 'package:flutter/material.dart';

class TelaPedido extends StatefulWidget {
  const TelaPedido({super.key});

  @override
  State<TelaPedido> createState() => _TelaPedidoState();
}

class _TelaPedidoState extends State<TelaPedido> {
  final TextEditingController nomeController = TextEditingController();
  final TextEditingController produtoController = TextEditingController();
  final TextEditingController observacaoController =
      TextEditingController();

  int pedidosEnviados = 0;

  void enviarPedido() {
    if (nomeController.text.isEmpty ||
        produtoController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Preencha o nome e o produto."),
          backgroundColor: Colors.red,
        ),
      );
      return;
    }

    setState(() {
      pedidosEnviados++;
    });

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text("Pedido enviado com sucesso!"),
        backgroundColor: Colors.green,
      ),
    );

    nomeController.clear();
    produtoController.clear();
    observacaoController.clear();
  }

  @override
  void dispose() {
    nomeController.dispose();
    produtoController.dispose();
    observacaoController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Fazer Pedido"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Text(
              "Pedidos enviados: $pedidosEnviados",
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 20),

            TextField(
              controller: nomeController,
              decoration: const InputDecoration(
                labelText: "Nome do cliente",
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 15),

            TextField(
              controller: produtoController,
              decoration: const InputDecoration(
                labelText: "Produto desejado",
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 15),

            TextField(
              controller: observacaoController,
              maxLines: 3,
              decoration: const InputDecoration(
                labelText: "Observação",
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 25),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: enviarPedido,
                child: const Text("Enviar Pedido"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
