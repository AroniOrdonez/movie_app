import 'package:flutter/material.dart';
import 'package:proyectosandroid/pages/home_page.dart';
import 'package:proyectosandroid/pages/password_input_page.dart'; // Corrige el path
import 'package:proyectosandroid/pages/calendar_input_page.dart'; // Corrige el path
import 'package:proyectosandroid/pages/captura_valores_input_page.dart'; // Corrige el path
import 'package:proyectosandroid/pages/general_input_page.dart'; // Corrige el path

class InputPage extends StatelessWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).padding.top + kToolbarHeight,
              left: 16.0,
              right: 16.0,
            ),
            decoration: BoxDecoration(
              color: Colors.purpleAccent,
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 4,
                  offset: Offset(0, 2),
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: Icon(Icons.arrow_back),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  color: Colors.white,
                ),
                Text(
                  "Input Page",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: 40.0),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16.0, 24.0, 16.0, 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  buildButton(context, "General-Inputs", "Ir a detalle General-Inputs", GeneralInputsPage(), Icons.list_alt),
                  buildButton(context, "Password-Inputs", "Ir a detalle Password-Inputs", PasswordInputPage(), Icons.lock),
                  buildButton(context, "Captura Valores del Input Page", "Ir a detalle Captura Valores del Input Page", CapturaValoresDelInputPage(), Icons.camera_alt),
                  buildButton(context, "Calendar Input Page", "Ir a detalle Calendar Input Page", CalendarInputPage(), Icons.calendar_today),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildButton(BuildContext context, String title, String detailText, Widget toPage, IconData iconData) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => toPage),
          );
        },
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.blueGrey), // Color de fondo del botón
          padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(16.0)), // Ajuste de padding
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center, // Alineación central verticalmente
          children: [
            Icon(iconData, color: Colors.white), // Icono diferente dentro del botón
            SizedBox(width: 8), // Espacio entre el icono y el texto
            Container(
              width: MediaQuery.of(context).size.width - 120, // Ajuste del ancho del contenedor del texto
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 4), // Espacio entre el título y el texto "ir a detalle"
                  Text(
                    detailText,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            Icon(Icons.arrow_forward_ios, color: Colors.white), // Icono diferente ">" a la derecha del botón
          ],
        ),
      ),
    );
  }
}
