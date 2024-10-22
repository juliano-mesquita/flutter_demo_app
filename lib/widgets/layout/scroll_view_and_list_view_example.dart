
import 'package:flutter/material.dart';

class ScrollViewAndListViewExample extends StatelessWidget
{
  const ScrollViewAndListViewExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: const [
          ListTile(
            leading: Icon(Icons.map),
            title: Text('Mapa')
          ),
          ListTile(
            leading: Icon(Icons.photo),
            title: Text('Fotos')
          ),
          ListTile(
            leading: Icon(Icons.phone),
            title: Text('Telefone')
          ),
          ListTile(
            leading: Icon(Icons.access_alarm),
            title: Text('Alarm')
          ),
          ListTile(
            leading: Icon(Icons.work),
            title: Text('Trabalho')
          ),
          ListTile(
            leading: Icon(Icons.play_arrow),
            title: Text('Iniciar')
          ),
          ListTile(
            leading: Icon(Icons.pause),
            title: Text('Pausar')
          ),
          ListTile(
            leading: Icon(Icons.volume_off),
            title: Text('Sem volume')
          ),
          ListTile(
            leading: Icon(Icons.volume_up),
            title: Text('Aumentar Volume')
          ),
          ListTile(
            leading: Icon(Icons.volume_down),
            title: Text('Diminuir Volume')
          ),
          ListTile(
            leading: Icon(Icons.volcano),
            title: Text('Vulcão')
          ),
          ListTile(
            leading: Icon(Icons.star),
            title: Text('Estrela')
          ),
          ListTile(
            leading: Icon(Icons.account_balance),
            title: Text('Conta')
          ),
          ListTile(
            leading: Icon(Icons.money),
            title: Text('Dinheiro')
          ),
          ListTile(
            leading: Icon(Icons.currency_bitcoin),
            title: Text('Bitcoin')
          )
        ],
      ),
    );
  }
  
}