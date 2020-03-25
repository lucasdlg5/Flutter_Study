import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
            backgroundColor: Colors.blueGrey,
            appBar: AppBar(
              title: Text("I am Rich"),
              backgroundColor: Colors.blueGrey[900],
            ),
            body: Center(
              child: Image(
                image: NetworkImage(
                    'https://www.petlove.com.br/images/breeds/197837/profile/original/shiba-p.jpg?1532540015'),
              ),
            )),
      ),
    );
