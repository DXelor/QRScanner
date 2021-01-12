import 'package:flutter/material.dart';

class MapasPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 10,
        itemBuilder: (/*BuildContext context*/ _, i) => ListTile(
              leading: Icon(Icons.map, color: Theme.of(context).primaryColor),
              title: Text('http://sadw2q23'),
              subtitle: Text('ID: 1'),
              trailing: Icon(Icons.keyboard_arrow_right, color: Colors.amber),
              onTap: () => print('abrir algo...'),
            ));
  }
}
