import 'package:flutter/material.dart';
class TextArea extends StatelessWidget {
  const TextArea({super.key});

  @override
  Widget build(BuildContext context) {
    return const  Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:[
               Text('Currency Converter',
              style: TextStyle(
            fontSize: 39,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
            color: Color.fromARGB(255, 0, 0, 0),
          ),
          ), 
              ]
            ),
    );
  }
}
