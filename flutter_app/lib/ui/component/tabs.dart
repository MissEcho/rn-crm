import 'package:flutter/material.dart';

class TabBar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: AppBar(

          ),
        ),
      ),
    );
  }
}