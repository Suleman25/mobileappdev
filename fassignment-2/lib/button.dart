import 'package:flutter/material.dart';
class Button extends StatelessWidget {
  const Button({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
         
          onPressed: () {
            debugPrint("Pressed");
          },
            style: const ButtonStyle(
            backgroundColor: WidgetStatePropertyAll<Color>(
              Color.fromARGB(225, 0, 0, 0),
            ),
            foregroundColor: WidgetStatePropertyAll<Color>(
              Color.fromARGB(222, 63, 76, 160),
            ),
            fixedSize: WidgetStatePropertyAll<Size>(
              Size(200, 50),
            ),
          ),
          child: const Text(
            'PRESS ME',
            style: TextStyle(color: Colors.white),
          ),
        );
  }
}