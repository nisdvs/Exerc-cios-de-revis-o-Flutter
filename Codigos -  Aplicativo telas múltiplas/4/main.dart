import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Calculadora de Média',
    home: TelaInicio(),
  ));
}

class TelaInicio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bem-vindo'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => TelaDisciplinas()),
            );
          },
          child: Text('Começar'),
        ),
      ),
    );
  }
}

class TelaDisciplinas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Disciplinas'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TelaCalculoDisciplina(nomeDisciplina: 'Matemática')),
                );
              },
              child: Text('Matemática'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TelaCalculoDisciplina(nomeDisciplina: 'Português')),
                );
              },
              child: Text('Português'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TelaCalculoDisciplina(nomeDisciplina: 'Ciências')),
                );
              },
              child: Text('Ciências'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TelaCalculoDisciplina(nomeDisciplina: 'História')),
                );
              },
              child: Text('História'),
            ),
          ],
        ),
      ),
    );
  }
}

class TelaCalculoDisciplina extends StatelessWidget {
  final String nomeDisciplina;

  TelaCalculoDisciplina({required this.nomeDisciplina});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(nomeDisciplina),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: Text('Nota'),
                  content: TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(labelText: 'Digite a nota'),
                  ),
                  actions: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text('OK'),
                    ),
                  ],
                );
              },
            );
          },
          child: Text('Adicionar Nota'),
        ),
      ),
    );
  }
}
