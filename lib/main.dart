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
        home: TelaEstudos(),
      );
  }
}

class TelaEstudos extends StatelessWidget {
  const TelaEstudos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Plano de estudos'),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text('Minha rotina'),
            ],
          ),
        ),
      ),
    );
  }

  
}
