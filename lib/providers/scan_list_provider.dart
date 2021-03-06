import 'package:flutter/material.dart';
import 'package:qr_reader/models/scan_model.dart';
import 'package:qr_reader/providers/db_provider.dart';

class ScanListProvider extends ChangeNotifier {
  List<ScanModel> scans = [];
  String tipoSeleccionado = 'http';
  int idSeleccionado;

  Future<ScanModel> nuevoScan(String valor) async {
    final nuevoScan = new ScanModel(valor: valor);

    final id = await DBProvider.db.nuevoScan(nuevoScan);

    //Asignar el ID de la base de datos al modelo
    nuevoScan.id = id;
    if (this.tipoSeleccionado == nuevoScan.tipo) {
      this.scans.add(nuevoScan);
      notifyListeners();
    }
    return nuevoScan;
  }

  cargarScans() async {
    final scans = await DBProvider.db.getTodosLosScans();

    this.scans = [...scans];
    notifyListeners();
  }

  cargarScansByType(String tipo) async {
    final scans = await DBProvider.db.getScansByType(tipo);
    this.scans = [...scans];
    this.tipoSeleccionado = tipo;
    notifyListeners();
  }

  // cargarScansById(id) async {
  //   final scans = await DBProvider.db.getScansById(id);
  //   this.scans = [scans];
  //   this.idSeleccionado = id;
  //   notifyListeners();
  // }

  borrarTodos() async {
    await DBProvider.db.deleteAllScans();
    this.scans = [];
    notifyListeners();
  }

  borrarScanPorId(int id) async {
    await DBProvider.db.deleteScans(id);
  }
}
