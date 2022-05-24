import 'package:flutter/material.dart';
import 'package:widget_semana/components/drawer_menu.dart';

class ExpandedWidget extends StatelessWidget {
  const ExpandedWidget({Key? key}) : super(key: key);
  final estilo = const TextStyle(fontSize: 20);
  static const String routeName = '/exapanded';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Expanded'),
      ),
      drawer: const DrawerMenu(),
      body: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Row(
          children: const <Widget>[
            Cuadrado(color: Colors.pink),
            Expanded(
              flex: 3,
              child: Cuadrado(color: Colors.green),
            ),
            Expanded(
              flex: 2,
              child: Cuadrado(color: Colors.lightBlueAccent),
            ),
            Cuadrado(color: Colors.pink),
          ],
        ),
      ),
    );
  }
}

class Cuadrado extends StatelessWidget {
  final Color? color;
  const Cuadrado({Key? key, this.color}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50.0,
      height: 50.0,
      decoration: BoxDecoration(
        color: color,
      ),
    );
  }
}
