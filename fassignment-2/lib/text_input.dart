 import 'package:flutter/material.dart';
 class InputArea extends StatelessWidget {
   const InputArea({super.key});
 
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
     return const  Padding(
          padding:  EdgeInsets.all(15.0),
          child: TextField(
            decoration: InputDecoration(
              hintText: "Enter the amount to convert",
              hintStyle: TextStyle(color:Color.fromARGB(255, 0, 0, 0)),
              prefixIcon: Icon(Icons.monetization_on),
              filled: true,
              fillColor: Color.fromARGB(255, 235, 211, 164),
              focusedBorder: border,
              enabledBorder: border,
              ),
              keyboardType: TextInputType.numberWithOptions(decimal: true),
            ),
        );
   }
 }
 