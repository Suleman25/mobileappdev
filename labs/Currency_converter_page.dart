import 'package:flutter/material.dart';

class CurrencyConverterPage extends StatelessWidget{
  const CurrencyConverterPage ({super.key});
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color.fromARGB(120, 255, 189, 6),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[
            Text('Currency Converter',
            style: TextStyle(
          fontSize: 39,
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.italic,
          color: Color.fromARGB(255, 0, 0, 0),
        ),), 
          ],
                  
          ),
        ),
        
      );
  }
}