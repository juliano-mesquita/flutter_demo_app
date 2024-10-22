import 'package:flutter/material.dart';
import 'package:flutter_demo_app/widgets/layout/container_example.dart';
import 'package:flutter_demo_app/widgets/layout/grid_view_example.dart';
import 'package:flutter_demo_app/widgets/layout/row_and_column_example.dart';
import 'package:flutter_demo_app/widgets/layout/scaffold_example.dart';
import 'package:flutter_demo_app/widgets/layout/scroll_view_and_list_view_example.dart';
import 'package:flutter_demo_app/widgets/layout/stack_example.dart';
import 'package:flutter_demo_app/widgets/stateful_example.dart';
import 'package:flutter_demo_app/widgets/stateless_example.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: ListView(
          padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          children: [
            const Text('Base Widgets'),
            ListTile(
              title: const Text('Stateless Widget'),
              onTap: () => _open(const MyStatelessWidget()),
            ),
            ListTile(
              title: const Text('Stateful Widget'),
              onTap: () => _open(const CounterWidget()),
            ),
            const Divider(),
            const Text('Layout widgets'),
            ListTile(
              title: const Text('Row And Column'),
              onTap: () => _open(const RowAndColumnWidget()),
            ),
            ListTile(
              title: const Text('Container Widget'),
              onTap: () => _open(const ContainerWidget()),
            ),
            ListTile(
              title: const Text('Scaffold'),
              onTap: () => _open(const ScaffoldWidget()),
            ),
            ListTile(
              title: const Text('Stack'),
              onTap: () => _open(const StackWidget()),
            ),
            ListTile(
              title: const Text('Scroll View & List View'),
              onTap: () => _open(const ScrollViewAndListViewExample()),
            ),
            ListTile(
              title: const Text('Grid View'),
              onTap: () => _open(const GridViewExample()),
            ),
          ],
        )
      ),
    );
  }

  Future<void> _open(Widget widget)
  {
    return Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => widget
      )
    );
  }
}
