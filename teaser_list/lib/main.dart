import 'package:flutter/material.dart';
import 'package:teaser_list/pages/about.dart';
import 'package:teaser_list/pages/home.dart';
import 'package:teaser_list/pages/settings.dart';

import 'layout.dart';

void main() => runApp(TeaserList());

class TeaserList extends StatelessWidget{

  final routes = <String, WidgetBuilder>{
    HomePage.tag: (context) => HomePage(),
    AboutPage.tag: (context) => AboutPage(),
    SettingsPage.tag: (context) => SettingsPage(),
    // A segunda forma de se fazer este import:
    // AboutPage.tag: (context) {
    //   return AboutPage();
    // }
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Teaser List',
      theme: ThemeData(
        primaryColor: Layout.primary(),
        accentColor: Layout.secondary(),
        brightness: Brightness.light,
        textTheme: TextTheme(
          headline: TextStyle(fontSize: 72, fontWeight: FontWeight.bold),
          title: TextStyle(fontSize: 36, fontStyle: FontStyle.italic, color: Layout.warning()),
          body1: TextStyle(fontSize: 14)
          ),
      ),
      home: HomePage(),
      routes: routes, //Realiza a transição de telas!
    );
  }
  }