import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: new Stack(children: <Widget>[
              Container(
                width: double.infinity,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Log in',
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      new Align(
                        alignment: Alignment.topCenter,
                        child: Image.asset(
                          "assets/images/login.png",
                          height: 400,
                          width: 430,
                        ),
                      ),
                      Container(
                          decoration: BoxDecoration(
                              color: Colors.purple[100],
                              borderRadius: BorderRadius.circular(40)),
                          width: 300,
                          padding: EdgeInsets.symmetric(horizontal: 0),
                          child: new TextField(
                              obscureText: true,
                              decoration: InputDecoration(
                                  hintText: 'Enter Your Email ',
                                  border: InputBorder.none,
                                  prefixIcon: Icon(Icons.person,
                                      color: Colors.purple[900]),
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.circular(40))))),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                          decoration: BoxDecoration(
                              color: Colors.purple[100],
                              borderRadius: BorderRadius.circular(40)),
                          width: 300,
                          padding: EdgeInsets.symmetric(horizontal: 0),
                          child: new TextField(
                              obscureText: true,
                              decoration: InputDecoration(
                                  hintText: 'Enter Your Password ',
                                  border: InputBorder.none,
                                  prefixIcon: Icon(Icons.lock,
                                      color: Colors.purple[900]),
                                  suffixIcon: Icon(Icons.visibility,
                                      color: Colors.purple[900]),
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.circular(40))))),
                      SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, "/Login");
                        },
                        child: Text(
                          'LOGIN',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(Colors.purple),
                            padding: MaterialStateProperty.all(
                                EdgeInsets.symmetric(
                                    horizontal: 100, vertical: 16)),
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(40)))),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      new Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          new Text("Don't have an acount? "),
                          GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, "/Sinup");
                            },
                            child: new Text(
                              "Sign up",
                              style: TextStyle(
                                  color: Colors.purple[900],
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            ),
                          )
                        ],
                      ),
                    ]),
              ),
              new Align(
                alignment: Alignment.topLeft,
                child: Image.asset(
                  'assets/images/main_top.png',
                  width: 140,
                ),
              ),
              new Align(
                alignment: Alignment.bottomLeft,
                child: Image.asset("assets/images/main_bottom.png", width: 90),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
