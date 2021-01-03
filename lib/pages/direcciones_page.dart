import 'package:flutter/material.dart';

class DireccionesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      elevation: 0,
      actions: [IconButton(icon: Icon(Icons.delete_forever), onPressed: () {})],
      title: Text('Direcciones'),
    ));
  }
}
