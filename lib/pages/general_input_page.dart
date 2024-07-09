import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GeneralInputsPage extends StatelessWidget {
  const GeneralInputsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("General-InputPage SIIII"),
        centerTitle: true,
        backgroundColor: Colors.purpleAccent,
      ), // AppBar
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                TextField(
                  maxLines: 1,
                  maxLength: 20,
                  textAlign: TextAlign.start,
                  cursorColor: Colors.purple,
                  style: TextStyle(
                    color: Colors.purpleAccent,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ), // TextStyle
                  decoration: InputDecoration(
                    label: Text("Correo electrónico"),
                    hintText: "andreyyl02@gmail.com",
                    hintStyle: TextStyle(
                      fontWeight: FontWeight.normal,
                      color: Colors.black.withOpacity(0.35),
                      fontSize: 16.0,
                    ), // TextStyle
                    icon: Icon(Icons.email),
                    prefixIcon: Icon(Icons.alternate_email),
                    suffix: Icon(
                      Icons.email_outlined,
                      color: Colors.blueAccent,
                    ), // Icon
                  ), // InputDecoration
                  onChanged: (String value) {
                    print(value);
                  },
                ), // TextField
                TextField(
                  decoration: InputDecoration(
                    hintText: "Buscar producto",
                    prefixIcon: Icon(Icons.search),
                    enabled: true,
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.redAccent,
                        width: 4.0,
                      ), // BorderSide
                    ), // UnderlineInputBorder
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.yellowAccent,
                        width: 4.0,
                      ), // BorderSide
                    ), // UnderlineInputBorder
                    disabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.green,
                        width: 4.0,
                      ), // BorderSide
                    ), // UnderlineInputBorder
                  ), // InputDecoration
                ), // TextField
                SizedBox(
                  height: 30.0,
                ), // SizedBox
                Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.05),
                        blurRadius: 12,
                        offset: Offset(4, 4),
                      ), // BoxShadow
                    ], // BoxShadow
                  ), // BoxDecoration
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: "Buscar producto....",
                      hintStyle: GoogleFonts.poppins(
                        fontSize: 14.0,
                        color: Colors.black.withOpacity(0.30),
                      ), // GoogleFonts.poppins
                      suffixIcon: Container(
                        margin: EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          color: Colors.pinkAccent,
                          borderRadius: BorderRadius.circular(16.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.pink,
                              offset: Offset(4, 4),
                              blurRadius: 7.0,
                            ), // BoxShadow
                          ], // BoxShadow
                        ), // BoxDecoration
                        child: Icon(
                          Icons.search,
                          color: Colors.white,
                        ), // Icon
                      ), // Container
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        borderSide: BorderSide(
                          color: Colors.white,
                        ), // BorderSide
                      ), // OutlineInputBorder
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        borderSide: BorderSide(
                          color: Colors.white,
                        ), // BorderSide
                      ), // OutlineInputBorder
                    ), // InputDecoration
                  ), // TextField
                ), // Container
              ],
            ), // Column
          ), // Padding
        ],
      ), // Column
    ); // Scaffold
  }
}
