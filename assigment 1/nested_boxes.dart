import 'package:flutter/material.dart';

class NestedBoxes extends StatelessWidget {
  const NestedBoxes({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 300,
        height: 300,
        color: Colors.black,
        padding: const EdgeInsets.all(10),
        child: Container(
          color: const Color.fromARGB(255, 11, 95, 221),
          padding: const EdgeInsets.all(10),
          child: Container(
            color: Colors.orange,
            padding: const EdgeInsets.all(10),
            child: Container(
              color: const Color.fromARGB(255, 99, 241, 103),
              padding: const EdgeInsets.all(10),
              child: Container(
                color: const Color.fromARGB(255, 143, 143, 143),
                padding: const EdgeInsets.all(10),
                child: Container(
                  color: Colors.white,
                  child: const Center(
                    child: Text(
                      'This is\nInternal Box',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}