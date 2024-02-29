import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Coleta de Informações',
      home: InformacoesScreen(),
    );
  }
}

class InformacoesScreen extends StatefulWidget {
  @override
  _InformacoesScreenState createState() => _InformacoesScreenState();
}

class _InformacoesScreenState extends State<InformacoesScreen> {
  final TextEditingController _nomeController = TextEditingController();
  final TextEditingController _idadeController = TextEditingController();
  final TextEditingController _enderecoController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _telefoneController = TextEditingController();

  void _enviarInformacoes() {
    String nome = _nomeController.text;
    String idade = _idadeController.text;
    String endereco = _enderecoController.text;
    String email = _emailController.text;
    String telefone = _telefoneController.text;

    print('Informações fornecidas:');
    print('Nome: $nome');
    print('Idade: $idade');
    print('Endereço: $endereco');
    print('Email: $email');
    print('Telefone: $telefone');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Coleta de Informações'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TextField(
              controller: _nomeController,
              decoration: InputDecoration(labelText: 'Nome'),
            ),
            TextField(
              controller: _idadeController,
              decoration: InputDecoration(labelText: 'Idade'),
            ),
            TextField(
              controller: _enderecoController,
              decoration: InputDecoration(labelText: 'Endereço'),
            ),
            TextField(
              controller: _emailController,
              decoration: InputDecoration(labelText: 'Email'),
            ),
            TextField(
              controller: _telefoneController,
              decoration: InputDecoration(labelText: 'Telefone'),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              child: ElevatedButton(
                onPressed: _enviarInformacoes,
                child: Text('Enviar'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
