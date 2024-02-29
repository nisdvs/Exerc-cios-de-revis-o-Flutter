import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App de Esportes',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => TelaEsportes(),
        '/basquete': (context) => TelaBasquete(),
        '/futebol': (context) => TelaFutebol(),
        '/nfl': (context) => TelaNFL(),
      },
    );
  }
}

class TelaEsportes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Esportes'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/basquete');
              },
              child: Text('Basquete'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/futebol');
              },
              child: Text('Futebol'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/nfl');
              },
              child: Text('NFL'),
            ),
          ],
        ),
      ),
    );
  }
}

class TelaBasquete extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Basquete'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Jogadores de Basquete'),
            Text('1. Michael Jordan - Pontuação Média: 30 pontos por jogo'),
            Text('2. LeBron James - Média de Rebotes: 8 por jogo'),
            Text('3. Kobe Bryant - Assistências Médias: 5 por jogo'),
          ],
        ),
      ),
    );
  }
}

class TelaFutebol extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Futebol'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Jogadores de Futebol'),
            Text('1. Cristiano Ronaldo - Gols: 700'),
            Text('2. Lionel Messi - Assistências: 500'),
            Text('3. Neymar Jr. - Dribles: 1000'),
          ],
        ),
      ),
    );
  }
}

class TelaNFL extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('NFL'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Jogadores da NFL'),
            Text('1. Tom Brady - Touchdowns: 600'),
            Text('2. Patrick Mahomes - Jardas Passadas: 20000'),
            Text('3. Aaron Donald - Sacks: 100'),
          ],
        ),
      ),
    );
  }
}
