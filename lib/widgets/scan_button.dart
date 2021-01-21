import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qr_reader/providers/scan_list_provider.dart';
import 'package:qr_reader/utils/utils.dart';

class ScanButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      elevation: 0,
      child: Icon(Icons.filter_center_focus),
      onPressed: () async {
        //String barcodeScanRes = await FlutterBarcodeScan ner.scanBarcode(
        //'#3D8BEF', 'Cancelar', false, ScanMode.QR);
        //final barcodeScanRes = 'https://Dxel0r.github.com';
        final barcodeScanRes = 'geo:-0.069894,-76.963304';
        if (barcodeScanRes == '-1') {
          return;
        }
        final scanListProvider =
            Provider.of<ScanListProvider>(context, listen: false);
        final nuevoScan = await scanListProvider.nuevoScan(barcodeScanRes);
        launchURL(context, nuevoScan);
      },
    );
  }
}
