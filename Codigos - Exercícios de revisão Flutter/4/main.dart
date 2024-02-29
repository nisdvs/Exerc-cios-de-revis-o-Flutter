import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculadora de Média',
      home: NotasScreen(),
    );
  }
}

class NotasScreen extends StatelessWidget {
  final TextEditingController nomeController = TextEditingController();
  final TextEditingController nota1Controller = TextEditingController();
  final TextEditingController nota2Controller = TextEditingController();
  final TextEditingController nota3Controller = TextEditingController();
  final TextEditingController nota4Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculadora de Média'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TextField(
              controller: nomeController,
              decoration: InputDecoration(labelText: 'Nome do Aluno'),
            ),
            TextField(
              controller: nota1Controller,
              decoration: InputDecoration(labelText: 'Nota 1'),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: nota2Controller,
              decoration: InputDecoration(labelText: 'Nota 2'),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: nota3Controller,
              decoration: InputDecoration(labelText: 'Nota 3'),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: nota4Controller,
              decoration: InputDecoration(labelText: 'Nota 4'),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                double nota1 = double.parse(nota1Controller.text);
                double nota2 = double.parse(nota2Controller.text);
                double nota3 = double.parse(nota3Controller.text);
                double nota4 = double.parse(nota4Controller.text);

                double media = (nota1 + nota2 + nota3 + nota4) / 4;

                String resultado = media >= 7.0 ? 'Aprovado' : 'Reprovado';

                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text('Resultado'),
                      content: Text('O aluno está $resultado com média $media.'),
                      actions: <Widget>[
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text('Fechar'),
                        ),
                      ],
                    );
                  },
                );
              },
              child: Text('Calcular Média'),
            ),
          ],
        ),
      ),
    );
  }
}
