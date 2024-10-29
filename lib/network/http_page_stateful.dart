
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

class HttpPageStateful extends StatefulWidget
{
  const HttpPageStateful({super.key});

  @override
  State<StatefulWidget> createState() => _HttpPageStatefulState();
}

class _HttpPageStatefulState extends State<HttpPageStateful>
{
  // Utilizado em conjunto com o texto da liha 46.
  // É necessário para evitar re-renders
  late final _fetchDataFuture = fetchData();


  Future<List<dynamic>> fetchData() async
  {
    // Simulate long work
    final url = Uri.parse('https://jsonplaceholder.typicode.com/posts');
    final response = await http.get(url);

    if (response.statusCode == 200)
    {
      return jsonDecode(response.body);
    }
    else
    {
      throw Exception('Failed to load data');
    }
  }

  @override
  Widget build(BuildContext context)
  {
    return Scaffold
    (
      appBar: AppBar
      (
        title: const Text('HTTP requests in Flutter'),
      ),
      body: FutureBuilder<List<dynamic>>
      (
        // Chamar a função no FutureBuilder causará um re-render dos filhos toda vez
        // que a arvore de widget for atualizada. Para resolvermos este problema podemos
        // transformar o resultado da missão em uma variável.
        future: fetchData(),
        // Descomente a linha abaixo para ver os efeitos
        // future: _fetchDataFuture,
        builder: (context, snapshot)
        {
          if (snapshot.connectionState == ConnectionState.waiting)
          {
            return const Center(child: CircularProgressIndicator());
          }
          else if (snapshot.hasError)
          {
            return Center(child: Text('Erro: ${snapshot.error}'));
          }
          else
          {
            final data = snapshot.data!;
            return ListView.separated
            (
              itemCount: data.length,
              separatorBuilder: (_, __) => const Divider(),
              itemBuilder: (context, index)
              {
                return ListTile
                (
                  title: Text(data[index]['title']),
                  subtitle: Text(data[index]['body']),
                );
              },
            );
          }
        },
      ),
      floatingActionButton: FloatingActionButton
      (
        onPressed: ()
        {
          setState(() {
            
          });
        },
        child: const Icon(Icons.refresh),
      ),
    );
  }
}