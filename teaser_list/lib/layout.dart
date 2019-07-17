import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'pages/home.dart';
import 'pages/about.dart';
import 'pages/settings.dart';
class Layout {

  static final pages = [
    HomePage.tag,
    AboutPage.tag,
    SettingsPage.tag,
  ];

  static int currItem = 0;

  static Scaffold getContent(BuildContext context, content) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Layout.primary(),
        title: Center(child: Text('Teaser List')),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currItem,
        fixedColor: danger(),
        items:  <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon (Icons.home), title: Text('Home')),
        BottomNavigationBarItem(icon: Icon (Icons.add_to_home_screen), title: Text('Sobre')),
        BottomNavigationBarItem(icon: Icon (Icons.settings), title: Text('Configurações'))
        ],

        onTap: (int i){
          currItem = i;
          Navigator.of(context).pushNamed(pages[currItem]);
        }
      ),
      body: content,
    );
  }

  static Color primary ({ double opacity = 1}) => Color.fromRGBO(62, 63, 89, opacity);
  static Color secondary ({double opacity = 1}) => Color.fromRGBO(111, 168, 191, opacity);
  static Color light ({double opacity = 1}) => Color.fromRGBO(142, 234, 228, opacity);
  static Color dark ({double opacity = 1}) => Color.fromRGBO(51, 51, 51, opacity);
  static Color danger ({double opacity = 1}) => Color.fromRGBO(217, 74, 74, opacity);
  static Color sucess ({double opacity = 1}) => Color.fromRGBO(6, 166, 59, opacity);
  static Color info ({double opacity = 1}) => Color.fromRGBO(0, 122, 166, opacity);
  static Color warning ({double opacity = 1}) => Color.fromRGBO(166, 134, 0, opacity);
}