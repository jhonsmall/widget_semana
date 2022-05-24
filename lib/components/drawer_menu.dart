import 'package:flutter/material.dart';
import 'package:widget_semana/main.dart';

class DrawerMenu extends StatelessWidget {
  const DrawerMenu({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Drawer(
	child: ListView(
	    padding: EdgeInsets.zero,
	    children: <Widget>[
	      _buildDrawerHeader(),
	      _buildDrawerItem(icon: Icons.home, text: 'Safe Area', onTap: () => Navigator.pushReplacementNamed(context, MyApp.safeArea)),
	      _buildDrawerItem(icon: Icons.punch_clock_rounded, text: 'Expanded', onTap: () => Navigator.pushReplacementNamed(context, MyApp.expanded)),
	    ]
	)
      );
  }

  Widget _buildDrawerHeader() {
    return DrawerHeader(
	margin: EdgeInsets.zero,
	padding: EdgeInsets.zero,
	decoration: const BoxDecoration(
	    image: DecorationImage(
		fit: BoxFit.fill,
		image: AssetImage('images/drawer.jpg'),
	    ),
	),
	child: Stack(
	    children: const <Widget>[
	      Positioned(
		  bottom: 12.0,
		  left: 16.0,
		  child: Text('Widgets.', 
		    style: TextStyle(
			color: Colors.white,
			fontSize: 20.0,
			fontWeight: FontWeight.w500,
		    ),
		  ),
	      )
	    ],
	),
    );
  }

  Widget _buildDrawerItem({IconData? icon, String? text, GestureTapCallback? onTap}) {
    return ListTile(
	title: Row(
	    children: <Widget>[
	      Icon(icon),
	      Padding(
		  padding: const EdgeInsets.only(left: 8.0),
		  child: Text(text!),
	      )
	    ],
	),
	onTap: onTap,
    );
  }
}
