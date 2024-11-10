  import 'package:flutter/material.dart';
  import 'package:flutter_application_1/text_field.dart';
  import 'package:flutter_application_1/text_input.dart';
  import 'package:flutter_application_1/button.dart';

  class CurrencyCon extends StatelessWidget{
    const CurrencyCon ({super.key});
    @override
    Widget build(BuildContext context) {
      const border = OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                  borderSide: BorderSide(
                    color: Color.fromARGB(255, 167, 151, 101),
                    width: 2.0,
                    style: BorderStyle.solid,
                    strokeAlign: BorderSide.strokeAlignOutside,
                  ),
                );
      return   const Scaffold(
        backgroundColor: Color.fromARGB(120, 255, 189, 6),
        body: Column(
          children: [
            TextArea(),
            InputArea(),
            Button(),
          ],
        ),

      );
      
          
        
    }
  }