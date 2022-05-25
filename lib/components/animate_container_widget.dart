import 'dart:math';

import 'package:flutter/material.dart';
import 'package:widget_semana/components/drawer_menu.dart';

class AnimatedContainerWidget extends StatefulWidget {
  const AnimatedContainerWidget({Key? key}) : super(key: key);
  static const String routeName = '/animatedContainer';
  @override
  State<AnimatedContainerWidget> createState() =>
      _AnimatedContainerWidgetState();
}

class _AnimatedContainerWidgetState extends State<AnimatedContainerWidget> {
  @override
  Widget build(BuildContext context) {
    final rnd = Random();
    final r = rnd.nextInt(255);
    final g = rnd.nextInt(255);
    final b = rnd.nextInt(255);
    return Scaffold(
      appBar: AppBar(
        title: const Text('AnimatedContainer'),
      ),
      drawer: const DrawerMenu(),
      body: SingleChildScrollView(
        // mainAxisAlignment: MainAxisAlignment.center,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 1200),
              width: rnd.nextInt(900).toDouble(),
              height: rnd.nextInt(900).toDouble(),
              decoration: BoxDecoration(
                color: Color.fromRGBO(r, g, b, 1),
                borderRadius:
                    BorderRadius.circular(rnd.nextInt(100).toDouble()),
                border: Border.all(
                  color: Color.fromRGBO(r, g, b, 1),
                  width: rnd.nextInt(10).toDouble(),
                ),
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.purple,
        child: const Icon(Icons.accessibility_new),
        onPressed: () {
          setState(() {});
        },
      ),
    );
    // return Scaffold(
    //     appBar: AppBar(
    //       title: const Text('Animated Container'),
    //     ),
    //     drawer: const DrawerMenu(),
    //     body: Center(
    //       child: AnimatedContainer(
    //         duration: const Duration(milliseconds: 1200),
    //         curve: Curves.elasticInOut,
    //         width: 100,
    //         height: 100,
    //         // color: Colors.red,
    //         decoration: BoxDecoration(
    //           borderRadius: BorderRadius.circular(50),
    //           color: Colors.blue,
    //         ),
    //       ),
    //     ));
  }
}
