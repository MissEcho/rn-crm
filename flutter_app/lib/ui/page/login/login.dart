import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget{
  @override
  _LoginPageState createState()=>new _LoginPageState();
}
class _LoginPageState extends State<LoginPage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image(
              image: AssetImage("assets/images/login_logo.png"),
              width: 150.0
            ),
            DecoratedBox(
                decoration: BoxDecoration(
                  border: new Border.all(color: Color(0xFF666666), width: 1),
                  borderRadius: BorderRadius.circular(3.0), //3像素圆角
                ),
                child: Padding(padding: EdgeInsets.symmetric(horizontal: 80.0, vertical: 18.0),
                    child: Text("Login", style: TextStyle(color: Colors.black),),
                )
            ),
            TextField(
              decoration: InputDecoration(
                  labelText: "用户名",
                  hintText: "用户名或邮箱",
                  prefixIcon: Icon(Icons.person)
              ),
            ),
            TextField(
              decoration: InputDecoration(
                  labelText: "密码",
                  hintText: "您的登录密码",
                  prefixIcon: Icon(Icons.lock)
              ),
              obscureText: true,
            ),
            RaisedButton(
              child: Text("登陆"),
              onPressed: () {

                Navigator.of(context).pushNamed("home", arguments: "");
              },
            ),
            FlatButton(
              child: Text('忘记密码'),
              textColor: Colors.blue,
              onPressed: (){
                print('wjr print');
//                Navigator.push(context,MaterialPageRoute(builder: (context){return NewRoute();}));
              },
            )
          ],
        ),
      ),
//      floatingActionButton: new FloatingActionButton(onPressed: _incrementCounter,tooltip: 'Increment',child: new Icon(Icons.add),),
    );
  }
}
