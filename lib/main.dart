import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:global_configuration/global_configuration.dart';
import 'package:path/path.dart';
import './app.dart';
import 'package:device_preview/device_preview.dart';
import 'package:sqflite/sqflite.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  GlobalConfiguration().loadFromAsset("configurations");
//   var databasesPath = await getDatabasesPath();
//   var path = join(databasesPath, "kegel.db");
//   print("************************");
//   print("dbPath: $databasesPath");

//   // Check if the database exists
//   var exists = await databaseExists(path);

//   if (!exists) {
//     // Should happen only the first time you launch your application
//     print("Creating new copy from asset");

//     // Make sure the parent directory exists
//     try {
//       await Directory(dirname(path)).create(recursive: true);
//     } catch (_) {}

//     // Copy from asset
//     ByteData data = await rootBundle.load(join("assets", "kegel.db"));
//     List<int> bytes =
//         data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);

//     // Write and flush the bytes written
//     await File(path).writeAsBytes(bytes, flush: true);
//   } else {
//     print("Opening existing database");
//   }
// // // open the database
//   var db = await openDatabase(path, readOnly: true);
//   var list =
//       await db.query('ex_schedule', columns: ['id', 'sex', 'level', 'day']);
//   print(list);
  runApp(
    DevicePreview(
      enabled: false,
      builder: (_) => App(),
    ),
  );
}
