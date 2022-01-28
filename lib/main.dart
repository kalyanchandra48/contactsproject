import 'package:flutter/material.dart';
import 'dart:async';
import 'package:database/pages/dialpad.dart';
import 'package:database/services/services.dart';

Future<void> main() async {
  await HiveInstance.initialiseHive();
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Dialpad(),
    ),
  );
}
