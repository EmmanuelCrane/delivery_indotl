import 'package:delivery_indotl/ui/taps/nueva_screen.dart';
import 'package:delivery_indotl/ui/taps/otra_screen.dart';
import 'package:delivery_indotl/ui/taps/tres_screen.dart';
import 'package:flutter/material.dart';

import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOption = <Widget>[
    NuevaScreen(),
    OtraScreen(),
    TresScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: IndexedStack(
          index: _selectedIndex,
          children: _widgetOption,
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
//      items: List of Widgets
//      index: index of NavigationBar, can be used to change current index or to set initial index
//      color: Color of NavigationBar, default Colors.white
//      buttonBackgroundColor: background color of floating button, default same as color attribute
//      backgroundColor: Color of NavigationBar's background, default Colors.blueAccent
//      onTap: Function handling taps on items
//      animationCurve: Curves interpolating button change animation, default Curves.easeOutCubic
//      animationDuration: Duration of button change animation, default Duration(milliseconds: 600)
//      height: Height of NavigationBar, min 0.0, max 75.0
//      letIndexChange: Function which takes page index as argument and returns bool. If function returns false then page is not changed on button tap. It returns true by default\
        // backgroundColor: Theme.of(context).cardColor,
        buttonBackgroundColor: Theme.of(context).canvasColor,
        items: const <Widget>[
          Icon(Icons.verified_user_outlined),
          Icon(Icons.abc_outlined),
          Icon(Icons.compare_arrows_outlined)
        ],
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}
