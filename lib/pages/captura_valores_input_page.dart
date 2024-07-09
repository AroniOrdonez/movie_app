import 'package:flutter/material.dart';

class CapturaValoresDelInputPage extends StatefulWidget {
  @override
  State<CapturaValoresDelInputPage> createState() =>
      _CapturaValoresDelInputPageState();
}

class _CapturaValoresDelInputPageState extends State<CapturaValoresDelInputPage> {
  String name = "";
  TextEditingController _nameController = TextEditingController(text: "Por defecto");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Capturando Inputs"),
        backgroundColor: Colors.purple,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: "Ingrese tu nombre",
                labelStyle: TextStyle(color: Colors.purple),
                enabledBorder: UnderlineInputBorder(  // Bordes normales (cuando no está enfocado)
                  borderSide: BorderSide(color: Colors.purple),
                ),
                focusedBorder: UnderlineInputBorder(  // Bordes cuando está enfocado
                  borderSide: BorderSide(color: Colors.purple),
                ),
              ),
              onChanged: (String value) {
                setState(() {
                  name = value;
                });
                print(name);
              },
              onTap: () {
                print("ON TAP!!");
              },
            ),
            SizedBox(height: 20.0),
            TextField(
              controller: _nameController,
              decoration: InputDecoration(
                labelText: "Ingrese tu nombre",
                labelStyle: TextStyle(color: Colors.purple),
                enabledBorder: UnderlineInputBorder(  // Bordes normales (cuando no está enfocado)
                  borderSide: BorderSide(color: Colors.purple),
                ),
                focusedBorder: UnderlineInputBorder(  // Bordes cuando está enfocado
                  borderSide: BorderSide(color: Colors.purple),
                ),
              ),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                print(_nameController.text);
              },
              child: Text("Mostrar Valor!"),
            ),
            SizedBox(height: 30.0),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Teclado numérico",
                labelStyle: TextStyle(color: Colors.purple),
                enabledBorder: UnderlineInputBorder(  // Bordes normales (cuando no está enfocado)
                  borderSide: BorderSide(color: Colors.purple),
                ),
                focusedBorder: UnderlineInputBorder(  // Bordes cuando está enfocado
                  borderSide: BorderSide(color: Colors.purple),
                ),
              ),
            ),
            SizedBox(height: 20.0),
          ],
        ),
      ),
    );
  }
}
