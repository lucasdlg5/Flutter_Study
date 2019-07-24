import 'package:flutter/material.dart';
import 'package:teaser_list/widgets/HomeList.dart';
import '../layout.dart';
import 'about.dart';

class HomePage extends StatelessWidget{

  static String tag = 'Home-Page!';
  
  @override
  Widget build(BuildContext context) {
    final content = HomeList();

    return Layout.getContent(context, content);
  }

}