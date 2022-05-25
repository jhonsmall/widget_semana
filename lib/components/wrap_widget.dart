import 'package:flutter/material.dart';
import 'package:widget_semana/components/drawer_menu.dart';

class WrapWidget extends StatelessWidget {
  const WrapWidget({Key? key}) : super(key: key);
  final estilo = const TextStyle(fontSize: 20);
  static const String routeName = '/wrapWidget';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wrap Widget'),
      ),
      drawer: const DrawerMenu(),
      body: Center(
        child: Wrap(
          alignment: WrapAlignment.center,
          spacing: 10.0,
          // direction: Axis.vertical,
          children: const <Widget>[
            Tag(texto: 'Metal Gear'),
            Tag(texto: 'Overwatch'),
            Tag(texto: 'Cyber Punk'),
            Tag(texto: 'Control'),
            Tag(texto: 'Call of duty'),
            Tag(texto: 'Smash'),
            Tag(texto: 'Car'),
            Tag(texto: 'Lobster'),
            Tag(texto: 'Lobo'),
            Tag(texto: 'Angry Birds'),
            Tag(texto: 'Don'),
            Tag(texto: 'King'),
            Tag(texto: 'Kong'),
            Tag(texto: 'Ete'),
            Tag(texto: 'te'),
            Tag(texto: 'Llama'),
            Tag(texto: 'Lobo'),
          ],
        ),
      ),
    );
  }
}

class Tag extends StatelessWidget {
  final String? texto;
  const Tag({Key? key, this.texto}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Chip(
      avatar: CircleAvatar(
        child: Text(texto![0]),
        backgroundColor: Colors.white,
      ),
      label: Text(texto!, style: const TextStyle(color: Colors.white)),
      backgroundColor: Colors.blue,
    );
  }
}
