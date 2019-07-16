import 'package:flutter/material.dart';
import 'package:teaser_list/layout.dart';

class AboutPage extends StatelessWidget {
  static String tag = 'about-page';
  @override
  Widget build(BuildContext context) {
    
    return Layout.getContent(context, 
      Center(
        child: Text('Aplicativo para estudos do Flutter!'),
      )
    );
  }
  
}