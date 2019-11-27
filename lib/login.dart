import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          body: LoginPage(),
        ));
  }
}

class LoginPage extends StatefulWidget {
  @override
  LoginProcess createState() {
    return LoginProcess();
  }
}

class LoginProcess extends State<LoginPage> {
  void implement() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: new BoxDecoration(
        image: DecorationImage(
          image: new AssetImage('asset/407.jpg'),
          fit: BoxFit.fitHeight,
        ),
        shape: BoxShape.rectangle,
      ),
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      //color: Colors.red,
      child: Column(
        children: <Widget>[
          Container(
            height: 200,
            width: MediaQuery.of(context).size.width,
          ),
          Container(
            width: MediaQuery.of(context).size.width * 4 / 5,
            child: Material(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.fromLTRB(8.0, 10.0, 0.0, 0.0),
                    child: Text(
                      'Login',
                      style: TextStyle(fontSize: 28),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 20),
                    color: Colors.white,
                    width: MediaQuery.of(context).size.width * 3 / 4,
                    child: Column(
                      children: <Widget>[
                        TextField(
                          style: TextStyle(color: Colors.black),
                          obscureText: false,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Username',
                          ),
                        ),
                        TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Password',
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    alignment: Alignment.topRight,
                    padding: EdgeInsets.fromLTRB(0.0, 10.0, 8.0, 0.0),
                    child: Text(
                      'forgot Password?',
                      style: TextStyle(fontSize: 16, color: Colors.blue),
                    ),
                  ),
                  Opacity(
                    opacity: 0.25,
                  )
                ],
              ),
            ),
          ),
          // BlueBox(),
          Container(
            width: 118,
            height: 40,
            margin: const EdgeInsets.only(left: 185, top: 40),
            color: Colors.tealAccent,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  'LOGIN',
                  style: TextStyle(
                      fontSize: 17,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),

          Container(
            margin: const EdgeInsets.only(top: 70),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  child: Image(
                    image: AssetImage('asset/fb.jpg'),
                    width: 50,
                    height: 50,
                  ),
                ),
                Container(
                  child: Image(
                    image: AssetImage('asset/twi.png'),
                    width: 50,
                    height: 50,
                  ),
                ),
                Container(
                  child: Image(
                    image: AssetImage('asset/lin.jpg'),
                    width: 50,
                    height: 50,
                  ),
                ),
                Container(
                  child: Image(
                    image: AssetImage('asset/gog2.png'),
                    width: 50,
                    height: 50,
                  ),
                ),
              ],
            ),
          ),

          Container(
            margin: const EdgeInsets.only(top: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  'New User?',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                Text(
                  'Sign Up',
                  style: TextStyle(fontSize: 20, color: Colors.tealAccent),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class BlueBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.blue,
        border: Border.all(),
      ),
    );
  }
}
