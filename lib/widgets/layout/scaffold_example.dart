
import 'package:flutter/material.dart';

class ScaffoldWidget extends StatelessWidget
{
  const ScaffoldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Minha AppBar')
      ),
      body: const Center(
        child: Text('Corpo do app'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: const Icon(Icons.add),
      )
    );
  }
  
}