import 'package:flutter/material.dart';
import 'package:flutter-assignment-1/button.dart';
import 'package:flutter-assignment-1/currency_Con.dart';
import 'package:flutter-assignment-1/text_field.dart';

void main() {
  runApp(Mob());
}

class Mob extends StatelessWidget {
  const Mob({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Container(padding: EdgeInsets.all(200), child: CurrencyCon()));
  }
}
