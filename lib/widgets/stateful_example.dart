
import 'package:flutter/material.dart';

class CounterWidget extends StatefulWidget
{
  const CounterWidget({super.key});
  
  @override
  State<StatefulWidget> createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget>
{
  int _count = 0;

  void _increment()
  {
    setState(() {
      _count++;
    });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
            Text('Você pressionou o botão $_count vezes'),
            ElevatedButton(
              onPressed: _increment,
              child: const Text('Incrementar'),
            )
          ],
        ),
      )
    );
  }
  
}