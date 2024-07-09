import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AlertPage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'ALERTA 2',
            style: GoogleFonts.oswald(
              textStyle: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
        ),
        backgroundColor: Colors.purple[200],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 20),
            Text(
              'Posibles alertas que pueden surgir:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                _showAlert(
                  context,
                  'Alerta 1',
                  'Esta es la primera alerta.\n\n'
                      'Detalles:\n'
                      'Esta alerta se utiliza para informar al usuario sobre una acción completada correctamente. '
                      'No se requiere ninguna acción adicional por parte del usuario. Este tipo de alerta es ideal '
                      'para mensajes informativos simples.',
                );
              },
              child: Text('Mostrar Alerta 1'),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(255, 13, 179, 230)),
                foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                _showAlert(
                  context,
                  'Alerta 2',
                  'Esta es la segunda alerta.\n\n'
                      'Detalles:\n'
                      'Esta alerta indica que se ha producido un error. El usuario debe tomar alguna acción para '
                      'resolver el problema. Proporcione información clara sobre lo que salió mal y cómo el usuario '
                      'puede corregirlo. Este tipo de alerta es ideal para manejar errores y problemas críticos.',
                );
              },
              child: Text('Mostrar Alerta 2'),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(255, 13, 179, 230)),
                foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showAlert(BuildContext context, String title, String content) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            title,
            style: GoogleFonts.lobster(
              textStyle: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            textAlign: TextAlign.center,
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Icon(
                Icons.info_rounded,
                size: 50,
                color: Colors.blue, // Ajusta según tus necesidades
              ),
              SizedBox(height: 10),
              Text(
                'Información de la alerta:',
                style: GoogleFonts.lobster(
                  textStyle: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 10),
              Text(
                content,
                style: GoogleFonts.roboto(
                  textStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                    color: Colors.grey[800],
                  ),
                ),
                textAlign: TextAlign.justify,
              ),
            ],
          ),
          actions: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text(
                    'Cerrar',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
                    foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}

