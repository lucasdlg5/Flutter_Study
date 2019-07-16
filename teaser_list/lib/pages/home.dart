import 'package:flutter/material.dart';

import '../layout.dart';

class HomePage extends StatelessWidget{

  static String tag = 'Home-Page!';
  @override
  Widget build(BuildContext context) {
    final content = Center(
      child: Text("Hello World!")
    );
    return Layout.getContent(context, content);
  }

}