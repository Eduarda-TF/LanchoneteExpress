import 'package:flutter/material.dart';
import 'pages/tela_inicial.dart';

void main() {
  runApp(const LanchoneteExpressApp());
}

class LanchoneteExpressApp extends StatelessWidget {
  const LanchoneteExpressApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Lanchonete Express',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const TelaInicial(),
    );
  }
}