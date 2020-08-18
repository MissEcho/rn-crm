import 'package:flutter/material.dart';
import 'file:///E:/myspace/rn-crm/flutter_app/lib/ui/page/login/login.dart';
import 'package:flutter_app/ui/page/page_list.dart';

void main()=>runApp(new MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return new MaterialApp(
      title:'Flutter Demo',
      theme:new ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        "home":(context)=>HomePage(),
      },
      home:new LoginPage(),
    );
  }
}



