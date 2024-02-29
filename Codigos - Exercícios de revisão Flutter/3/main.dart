import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Jogadores de Futebol',
      home: JogadoresScreen(),
    );
  }
}

class JogadoresScreen extends StatelessWidget {
  final List<Jogador> jogadores = [
    Jogador(nome: 'Cristiano Ronaldo', idade: 36, gols: 780),
    Jogador(nome: 'Lionel Messi', idade: 34, gols: 750),
    Jogador(nome: 'Neymar Jr.', idade: 29, gols: 300),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Jogadores de Futebol'),
      ),
      body: ListView.builder(
        itemCount: jogadores.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(jogadores[index].nome),
            subtitle: Text('Idade: ${jogadores[index].idade} - Gols: ${jogadores[index].gols}'),
          );
        },
      ),
    );
  }
}

class Jogador {
  String nome;
  int idade;
  int gols;

  Jogador({required this.nome, required this.idade, required this.gols});
}
