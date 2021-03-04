import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final corPrimaria = Colors.blue[900];
  var nome = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: criarTitulo(Icons.access_alarm, " Primeiro FlutterApp"),
        backgroundColor: corPrimaria,
      ),
      backgroundColor: Colors.white,
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              criarTexto("Olá" + nome),
              criarTexto("Seja bem vindo!"),
              ElevatedButton(
                child: Container(
                    width: 200,
                    child: criarTitulo(Icons.add_sharp, "Adicionar texto"),
                ),
                onPressed: cliqueOla,
              ),
              ElevatedButton(
                child: Container(
                  width: 200,
                  child: criarTitulo(Icons.delete, "Deletar texto"),
                ),
                onPressed: apagarTextos,
              )
            ],
          ),
      ),
    );
  }

  void cliqueOla() {
    if (nome.length < 15) {
      setState(() {
        nome += "a";
      });
    }
  }

  void apagarTextos() {
    if (nome.length > 0) {
      setState(() {
        nome = nome.substring(0, nome.length - 1);
      });
    }
  }

  Widget criarTexto(String texto) {
    return Text(texto, style: criarEstiloTexto());
  }

  TextStyle criarEstiloTexto() {
    return TextStyle(color: corPrimaria, fontSize: 30, fontWeight: FontWeight.bold);
  }

  Widget criarTitulo(IconData icone, String texto) {
    return Row(
      children: <Widget>[
        Icon(icone, color: Colors.white, size: 30),
        Text(texto, style: TextStyle(color: Colors.white, fontSize: 22)),
      ],
    );
  }
}
