import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late TextEditingController user, pass;
  @override
  void initState() {
    user = TextEditingController();
    pass = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text(
            "Login Page",
            style: TextStyle(fontStyle: FontStyle.italic),
          ),
          centerTitle: true,
          backgroundColor: Colors.cyan,
        ),
        body: Container(
          child: ListView(
            children: [
              Image.asset("assets/login.jpg"),
              Container(
                margin: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 8.0),
                child: TextField(
                    controller: user,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      hintText: "Username",
                      contentPadding:
                          EdgeInsets.fromLTRB(16.0, 14.0, 16.0, 14.0),
                      border: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(10.0))),
                    )),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 8.0),
                child: TextField(
                  obscureText: true,
                    controller: pass,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      hintText: "Password",
                      contentPadding:
                          EdgeInsets.fromLTRB(16.0, 14.0, 16.0, 14.0),
                      border: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(10.0))),
                    )),
              ),
              Container(
                  margin: EdgeInsets.fromLTRB(100.0, 0.0, 100.0, 8.0),
                  child: MaterialButton(
                    padding: EdgeInsets.fromLTRB(16.0, 14.0, 16.0, 14.0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20.0))),
                    color: Colors.cyan,
                    onPressed: () {
                      FocusScope.of(context).requestFocus(FocusNode());
                    },
                    child: Text(
                      "Login",
                      style: TextStyle(color: Colors.white, fontSize: 20.0),
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
