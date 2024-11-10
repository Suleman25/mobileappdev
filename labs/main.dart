import 'package:flutter/material.dart';
import 'package:flutter_application_1/Currency_converter_page.dart';


void main() {
  runApp(  mob() );
}

class mob extends StatelessWidget{
  const mob ({super.key});
  @override
  Widget build (BuildContext context){
  return  MaterialApp(
      home: CurrencyConverterPage(),
    );
  }
}