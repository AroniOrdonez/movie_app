import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:proyectosandroid/pages/alert_page.dart';
import 'package:proyectosandroid/pages/avatar_page.dart';
import 'package:proyectosandroid/pages/alert_page2.dart'; // Importa la nueva página de alerta
import 'package:proyectosandroid/pages/input_page.dart'; // Importa InputPage
import 'package:proyectosandroid/pages/drawer_y_stack_page.dart'; // Importa DrawerYStackPage
import 'package:proyectosandroid/pages/bbva.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(25.0),
            child: Image.network(
              'https://upload.wikimedia.org/wikipedia/commons/thumb/5/59/David_SM_Maggiore.jpg/640px-David_SM_Maggiore.jpg',
              width: 300,
              height: 470,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return Icon(
                  Icons.error,
                  color: Colors.red,
                  size: 200,
                );
              },
            ),
          ),
          SizedBox(height: 20),
          Text(
            'Flutter Componentes',
            style: GoogleFonts.getFont(
              'Oregano',
              textStyle: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.blue[900],
              ),
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 10),
          Divider(
            color: Colors.grey[600],
            thickness: 1,
            indent: 100,
            endIndent: 100,
          ),
          SizedBox(height: 20),
          buildCard(
            context,
            'Avatar',
            'Ir a detalle de Avatar',
            Icons.account_circle,
            AvatarPage(),
          ),
          SizedBox(height: 10),
          buildCard(
            context,
            'Alert',
            'Ir a detalle de Alert',
            Icons.notifications,
            AlertPage(),
          ),
          SizedBox(height: 10),
          buildCard(
            context,
            'Nueva Alerta',
            'Ir a detalle de Alerta',
            Icons.notifications_active,
            AlertPage2(), // Nueva alerta
          ),
          SizedBox(height: 10),
          buildCard(
            context,
            'Inputs',
            'Ir a detalle de Inputs',
            Icons.input,
            InputPage(), // Nueva entrada para InputPage
          ),
          SizedBox(height: 10),
          buildCard(
            context,
            'Drawer y Stack',
            'Ir a detalle de Drawer y Stack',
            Icons.menu,
            DrawerYStackPage(), // Nueva entrada para DrawerYStackPage
          ),
          SizedBox(height: 20),
          buildCard(
            context,
            'Drawer y Stack para BBVA',
            'Ir a detalle BBVA',
            Icons.menu,
            MyApp (), // Nueva entrada para DrawerYStackPage
          ),
        ],
      ),
    );
  }

  Widget buildCard(BuildContext context, String title, String subtitle, IconData icon, Widget page) {
    return Container(
      width: 330,
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18),
        ),
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => page),
            );
          },
          child: ListTile(
            leading: Icon(icon, color: Colors.blue),
            title: Text(
              title,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.blue[900],
              ),
            ),
            subtitle: Text(
              subtitle,
              style: TextStyle(color: Colors.grey[600]),
            ),
            trailing: Icon(Icons.arrow_forward_ios_rounded),
          ),
        ),
      ),
    );
  }
}
