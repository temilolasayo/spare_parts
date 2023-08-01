import 'package:flutter/material.dart';
import 'package:spare_parts/app.dart';

void main() => runApp(const SparePartApp());

class SparePartApp extends StatelessWidget {
  const SparePartApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Gotham'),
      home: const SparePart(),
    );
  }
}
