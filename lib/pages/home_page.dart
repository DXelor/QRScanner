import 'package:flutter/material.dart';

import 'package:qr_reader/widgets/custom_navigatorbar.dart';
import 'package:qr_reader/widgets/scan_button.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        actions: [
          IconButton(icon: Icon(Icons.delete_forever), onPressed: () {})
        ],
        title: Text('Historial'),
      ),
      body: Center(
        child: Container(
          child: Text('Home Page'),
        ),
      ),
      bottomNavigationBar: CustomNavigationBar(),
      floatingActionButton: ScanButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
