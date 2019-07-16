import 'package:flutter/material.dart';

import '../layout.dart';
import 'about.dart';

class HomePage extends StatelessWidget{

  static String tag = 'Home-Page!';
  
  @override
  Widget build(BuildContext context) {
    
    final content = Center(
      child: Column (
        children: <Widget>[
        Text('Hello World'),
        RaisedButton(
          child: Text('Sobre'), 
          onPressed: () { 
            Navigator.of(context).pushNamed(AboutPage.tag); //Manda para outra tela usando o Routes do main.dart
        },)
      ],
      )
    );

    return Layout.getContent(context, content);
  }

}