import 'package:flutter/material.dart';
import 'package:widget_semana/components/drawer_menu.dart';

class SafeAreaWidget extends StatelessWidget {
  const SafeAreaWidget({Key? key}):super(key: key);  
  final estilo = const TextStyle(fontSize: 20);
  static const String routeName = '/safeArea';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
	appBar: AppBar(
	    title: const Text('Safe Area'),
	),
	drawer: const DrawerMenu(),
	body: SafeArea(
	    bottom: false,
	    left: false,
	    child: Center(
	      child: ListView(
		  children: List.generate(
		      100, (i) => Text('$i - jhonsmall', style: estilo)
		  ),
	      ),
	    ),
	),
    );
  }
}
