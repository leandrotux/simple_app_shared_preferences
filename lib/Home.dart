import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String textoSalvo = "Nada Salvo!";
  TextEditingController _controllerCampo = TextEditingController();

  _salvar() {
    final pref = SharedPreferences.getInstance;
  }

  _recuperar() {}

  _remover() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Shared Preferences")),
      body: Container(
        padding: EdgeInsets.all(32),
        child: Column(
          children: [
            Text(
              textoSalvo,
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(labelText: "Digite algo"),
              controller: _controllerCampo,
            ),
            Row(
              children: [
                RaisedButton(
                  color: Colors.blue,
                  textColor: Colors.white,
                  padding: EdgeInsets.all(15),
                  child: Text(
                    "Salvar",
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: _salvar,
                ),
                RaisedButton(
                  color: Colors.blue,
                  textColor: Colors.white,
                  padding: EdgeInsets.all(15),
                  child: Text(
                    "Recuperar",
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: _recuperar,
                ),
                RaisedButton(
                  color: Colors.blue,
                  textColor: Colors.white,
                  padding: EdgeInsets.all(15),
                  child: Text(
                    "Remover",
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: _remover,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
