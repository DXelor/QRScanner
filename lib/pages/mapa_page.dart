import 'package:flutter/material.dart';
import 'package:qr_reader/models/scan_model.dart';

class MapaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ScanModel scan = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text('mapa'),
      ),
      body: Center(
        child: Container(
          child: Text(scan.valor),
        ),
      ),
    );
  }
}
