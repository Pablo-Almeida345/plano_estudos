import 'package:flutter/material.dart';

void main() {
  runApp(const PlanoEstudosApp());
}

class PlanoEstudosApp extends StatelessWidget {
  const PlanoEstudosApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(child: Text('Plano de estudos')),
      ),
    );
  }
}