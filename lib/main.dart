import 'package:flutter/material.dart';
import 'package:my_pick/app/app.dart';
import 'package:my_pick/bootstrap.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  bootstrap(() => const MyPickApp());
}
