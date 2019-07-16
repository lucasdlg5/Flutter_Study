import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Layout {
  static Scaffold getContent(BuildContext context, content) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Center(child: Text('Teaser List')),
      ),
      body: content,
    );
  }
}