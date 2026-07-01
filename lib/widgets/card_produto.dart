import 'package:flutter/material.dart';

class CardProduto extends StatelessWidget {
  final String nome;
  final String preco;
  final String descricao;
  final VoidCallback aoClicar;

  const CardProduto({
    super.key,
    required this.nome,
    required this.preco,
    required this.descricao,
    required this.aoClicar,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 15),
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              nome,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 5),

            Text(
              preco,
              style: const TextStyle(
                fontSize: 18,
                color: Colors.red,
              ),
            ),

            const SizedBox(height: 8),

            Text(descricao),

            const SizedBox(height: 12),

            Align(
              alignment: Alignment.centerRight,
              child: ElevatedButton(
                onPressed: aoClicar,
                child: const Text("Ver detalhes"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}