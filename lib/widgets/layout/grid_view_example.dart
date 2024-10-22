
import 'package:flutter/material.dart';

class GridViewExample extends StatelessWidget
{
  const GridViewExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        crossAxisCount: 3,
        children: [
          Container(color: Colors.red),
          Container(color: Colors.blue),
          Container(color: Colors.green),
          Container(color: Colors.yellow),
        ],
      ),
    );
  }
  
}