import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lista de Compras',
      home: ListaComidasScreen(),
    );
  }
}

class ListaComidasScreen extends StatefulWidget {
  @override
  _ListaComidasScreenState createState() => _ListaComidasScreenState();
}

class _ListaComidasScreenState extends State<ListaComidasScreen> {
  List<Comida> _comidas = [
    Comida(nome: 'Pizza', valor: 25.0),
    Comida(nome: 'Hambúrguer', valor: 15.0),
    Comida(nome: 'Batata Frita', valor: 10.0),
    Comida(nome: 'Refrigerante', valor: 5.0),
  ];

  double _totalCompra = 0.0;

  void _calcularTotalCompra() {
    double total = 0.0;
    for (Comida comida in _comidas) {
      total += comida.valor;
    }
    setState(() {
      _totalCompra = total;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Compras'),
      ),
      body: ListView.builder(
        itemCount: _comidas.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(_comidas[index].nome),
            subtitle: Text('R\$ ${_comidas[index].valor.toStringAsFixed(2)}'),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _calcularTotalCompra();
        },
        child: Icon(Icons.calculate),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      bottomNavigationBar: BottomAppBar(
        child: Container(
          padding: EdgeInsets.all(16.0),
          child: Text(
            'Total: R\$ ${_totalCompra.toStringAsFixed(2)}',
            style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}

class Comida {
  String nome;
  double valor;

  Comida({required this.nome, required this.valor});
}
