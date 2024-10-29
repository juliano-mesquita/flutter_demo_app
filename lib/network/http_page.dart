
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

class HttpPage extends StatelessWidget
{
  const HttpPage({super.key});

  Future<List<dynamic>> fetchData() async
  {
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
        title: const Text('Requisições HTTP em Flutter'),
      ),
      body: FutureBuilder<List<dynamic>>
      (
        future: fetchData(),
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
    );
  }
  
}