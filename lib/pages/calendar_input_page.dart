import 'package:flutter/material.dart';

class CalendarInputPage extends StatefulWidget {
  @override
  _CalendarInputPageState createState() => _CalendarInputPageState();
}

class _CalendarInputPageState extends State<CalendarInputPage> {
  TextEditingController _dateTimeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CalendarPage"),
        centerTitle: true,
        backgroundColor: Colors.purple,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: "Nombre",
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: _dateTimeController,
              readOnly: true,
              decoration: InputDecoration(
                hintText: "Fecha de nacimiento",
                suffixIcon: Icon(Icons.date_range),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
              ),
              onTap: () {
                FocusScope.of(context).requestFocus(FocusNode());
                _selectDate(context);
              },
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2030),
    );
    if (picked != null) {
      setState(() {
        _dateTimeController.text = picked.toString().substring(0, 10);
      });
    }
  }
}
