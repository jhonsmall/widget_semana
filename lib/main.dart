import 'package:flutter/material.dart';
import 'package:widget_semana/components/animate_container_widget.dart';

import 'package:widget_semana/components/safe_area.dart';
import 'package:widget_semana/components/expanded_widget.dart';
import 'package:widget_semana/components/wrap_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  static const appTitle = 'Widget de la semana...';
  static const String safeArea = SafeAreaWidget.routeName;
  static const String expanded = ExpandedWidget.routeName;
  static const String wrap = WrapWidget.routeName;
  static const String animated = AnimatedContainerWidget.routeName;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appTitle,
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
      routes: {
        safeArea: (context) => const SafeAreaWidget(),
        expanded: (context) => const ExpandedWidget(),
        wrap: (context) => const WrapWidget(),
        animated: (context) => const AnimatedContainerWidget(),
      },
      // home: const MyHomePage(title: appTitle),
      home: const SafeAreaWidget(),
    );
  }
}
