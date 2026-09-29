import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: TelaEstudos(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class TelaEstudos extends StatefulWidget {
  const TelaEstudos({super.key});

  @override
  State<TelaEstudos> createState() => _TelaEstudosState();
}

class _TelaEstudosState extends State<TelaEstudos> {
  // Opcional: variável de contador para tornar o botão funcional
  int _sessoesConcluidas = 0;

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
              const Icon(Icons.menu_book, size: 64, color: Colors.indigo),
              const SizedBox(height: 16),
              const Text(
                'Minha rotina',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              const Text('Uma sessão por vez.'),
              const SizedBox(height: 24),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Sessões concluídas'),
                      const SizedBox(height: 8),
                      Text(
                        '$_sessoesConcluidas',
                        style: const TextStyle(fontSize: 36),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    _sessoesConcluidas++;
                  });
                },
                child: const Text('Concluir sessão'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}