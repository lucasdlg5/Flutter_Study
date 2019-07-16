import 'package:flutter/material.dart';
import 'package:teaser_list/pages/about.dart';
import 'package:teaser_list/pages/home.dart';

void main() => runApp(TeaserList());

class TeaserList extends StatelessWidget{

  final routes = <String, WidgetBuilder>{
    HomePage.tag: (context) => HomePage(),
    AboutPage.tag: (context) => AboutPage() 
    // A segunda forma de se fazer este import:
    // AboutPage.tag: (context) {
    //   return AboutPage();
    // }
  };

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Teaser List',
      theme: ThemeData(
        primaryColorDark: Colors.blueGrey,
        accentColor: Colors.grey,
        textTheme: TextTheme(
          headline: TextStyle(fontSize: 72, fontWeight: FontWeight.bold),
          title: TextStyle(fontSize: 36, fontStyle: FontStyle.italic, color: Colors.blueGrey),
          body1: TextStyle(fontSize: 14)
          ),
      ),
      home: HomePage()
    );
  }
  }