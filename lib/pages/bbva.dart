import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BBVA',
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Image.network(
            'https://st2.depositphotos.com/1013693/12165/i/450/depositphotos_121658060-stock-photo-magic-sparkle-party-celebration-abstract.jpg',
            fit: BoxFit.cover,
          ),
          Column(
            children: <Widget>[
              Expanded(
                child: Scaffold(
                  backgroundColor: Colors.transparent,
                  appBar: AppBar(
                    title: Text('BBVA ', style: TextStyle(color: Colors.white)), // Cambio de color del texto BBVA a blanco
                    backgroundColor: Colors.transparent,
                    elevation: 0,
                    actions: [
                      Builder(
                        builder: (BuildContext context) {
                          return IconButton(
                            icon: Icon(Icons.menu, color: Colors.white),
                            onPressed: () {
                              Scaffold.of(context).openEndDrawer();
                            },
                          );
                        },
                      ),
                    ],
                  ),
                  endDrawer: Drawer( // Utilizando endDrawer para el menú desplegable en la parte derecha
                    child: Container(
                      color: Colors.blue[900], // Fondo azul marino para todo el Drawer
                      child: ListView(
                        padding: EdgeInsets.zero,
                        children: <Widget>[
                          DrawerHeader(
                            decoration: BoxDecoration(
                              color: Colors.blue[900], // Mantener el mismo color para DrawerHeader
                            ),
                            child: Text(
                              'Luis',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                              ),
                            ),
                          ),
                          ListTile(
                            leading: Icon(Icons.account_circle, color: Colors.white),
                            title: Text('Perfil', style: TextStyle(color: Colors.white)),
                            onTap: () {
                              Navigator.pop(context);
                            },
                          ),
                          ListTile(
                            leading: Icon(Icons.settings, color: Colors.white),
                            title: Text('Configuración', style: TextStyle(color: Colors.white)),
                            onTap: () {
                              Navigator.pop(context);
                            },
                          ),
                          ListTile(
                            leading: Icon(Icons.location_on, color: Colors.white),
                            title: Text('Puntos de atención', style: TextStyle(color: Colors.white)),
                            onTap: () {
                              Navigator.pop(context);
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => PuntosScreen()),
                              );
                            },
                          ),
                          ListTile(
                            leading: Icon(Icons.phone, color: Colors.white),
                            title: Text('Comunícate con nosotros', style: TextStyle(color: Colors.white)),
                            onTap: () {
                              Navigator.pop(context);
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => ComunicateScreen()),
                              );
                            },
                          ),
                          ListTile(
                            leading: Icon(Icons.apps, color: Colors.white),
                            title: Text('Aplicaciones', style: TextStyle(color: Colors.white)),
                            onTap: () {
                              Navigator.pop(context);
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => AplicacionesScreen()),
                              );
                            },
                          ),
                          ListTile(
                            leading: Icon(Icons.info, color: Colors.white),
                            title: Text('Acerca de BBVA', style: TextStyle(color: Colors.white)),
                            onTap: () {
                              Navigator.pop(context);
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => AcercaScreen()),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                  body: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        CircleAvatar(
                          radius: 30,
                          child: Text(
                            'AS',
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Hola Luis',
                          style: TextStyle(fontSize: 24, color: Colors.white),
                        ),
                        Text(
                          'Cambiar usuario',
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ),
                        SizedBox(height: 10),
                        ElevatedButton(
                          onPressed: () {
                            // Acción al pulsar "Iniciar sesión"
                          },
                          child: Text(
                            'Iniciar sesión',
                            style: TextStyle(color: Colors.white),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blueAccent,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.lock),
            label: 'Token digital',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.location_on),
            label: 'Puntos de atención',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.payment),
            label: 'Plin',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Acceder a Mi Negocio',
          ),
        ],
        selectedItemColor: Colors.blueAccent,
        unselectedItemColor: Colors.black,
        backgroundColor: Colors.transparent,
        elevation: 0,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}

class PuntosScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Puntos de atención')),
      body: Center(child: Text('Puntos de atención Page')),
    );
  }
}

class ComunicateScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Comunícate con nosotros')),
      body: Center(child: Text('Comunícate con nosotros Page')),
    );
  }
}

class AplicacionesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Aplicaciones')),
      body: Center(child: Text('Aplicaciones Page')),
    );
  }
}

class AcercaScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Acerca de BBVA')),
      body: Center(child: Text('Acerca de BBVA Page')),
    );
  }
}
