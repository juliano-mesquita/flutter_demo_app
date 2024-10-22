
import 'package:flutter/material.dart';

class StackWidget extends StatelessWidget
{
  const StackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          
          const Positioned(
            top: 150,
            left: 150,
            child: Icon(
              Icons.star,
              size: 50,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
  
}