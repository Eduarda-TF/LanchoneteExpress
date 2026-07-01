import 'package:flutter/material.dart';

class TelaDetalhes extends StatefulWidget {
  final String nome;
  final String preco;
  final String descricao;

  const TelaDetalhes({
    super.key,
    required this.nome,
    required this.preco,
    required this.descricao,
  });

  @override
  State<TelaDetalhes> createState() => _TelaDetalhesState();
}

class _TelaDetalhesState extends State<TelaDetalhes> {
  bool destaque = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.nome),
      ),
      body: Center(
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeInOut,
          width: destaque ? 320 : 280,
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: destaque ? Colors.orange.shade200 : Colors.grey.shade200,
            borderRadius: BorderRadius.circular(
              destaque ? 30 : 10,
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                widget.nome,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 10),

              Text(
                widget.preco,
                style: const TextStyle(
                  fontSize: 20,
                  color: Colors.red,
                ),
              ),

              const SizedBox(height: 15),

              Text(
                widget.descricao,
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 20),

              if (destaque)
                const Text(
                  "⭐ Produto mais pedido da semana!",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                  ),
                  textAlign: TextAlign.center,
                ),

              const SizedBox(height: 20),

              ElevatedButton(
                onPressed: () {
                  setState(() {
                    destaque = !destaque;
                  });
                },
                child: const Text("Adicionar destaque"),
              ),

              const SizedBox(height: 10),

              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text("Voltar"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

