
import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget
{
  const ContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.all(50.0),
        padding: const EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(10),
        ),
        child: const Text('Texto dentro de um container'),
      ),
    );
  }
  
}