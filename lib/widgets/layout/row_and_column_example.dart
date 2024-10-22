
import 'package:flutter/material.dart';

class RowAndColumnWidget extends StatelessWidget
{
  const RowAndColumnWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.star),
              Text('Estrela')
            ],
          ),
          Container(
            padding: const EdgeInsets.all(16.0),
            child: const Text('Este é um container'),
          )
        ],
      ),
    );
  }
  
}