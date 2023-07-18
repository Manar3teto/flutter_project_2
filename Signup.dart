import 'package:flutter/material.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

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
                        'Sign up',
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      new Align(
                        alignment: Alignment.topCenter,
                        child: Image.asset(
                          "assets/images/signup.png",
                          height: 300,
                          width: 430,
                        ),
                      ),
                      SizedBox(
                        height: 20,
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
                          Navigator.pushNamed(context, "/Sinup");
                        },
                        child: Text(
                          'SIGUP',
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
                        height: 10,
                      ),
                      new Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          new Text("Already have an acount? "),
                          GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, "/Login");
                            },
                            child: new Text(
                              " Log in",
                              style: TextStyle(
                                  color: Colors.purple[900],
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      new Text(
                          '______________________ OR _________________________'),
                      SizedBox(
                        height: 20,
                      ),
                      new Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          new Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                    color: Colors.black, width: 0.5)),
                            child: Image.asset(
                              'assets/images/facebook.png',
                              width: 50,
                              color: Colors.blue[800],
                            ),
                          ),
                          SizedBox(
                            width: 40,
                          ),
                          new Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                    color: Colors.black, width: 0.5)),
                            child: Image.asset(
                              'assets/images/twitter.png',
                              width: 50,
                              color: const Color.fromARGB(255, 44, 152, 240),
                            ),
                          ),
                          SizedBox(
                            width: 40,
                          ),
                          new Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                    color: Colors.black, width: 0.5)),
                            child: Image.asset(
                              'assets/images/google-plus.png',
                              width: 50,
                              color: Colors.purple[500],
                            ),
                          ),
                        ],
                      ),
                    ]),
              ),
              new Align(
                alignment: Alignment.bottomRight,
                child: Image.asset(
                  'assets/images/login_bottom.png',
                  width: 140,
                ),
              ),
              new Align(
                alignment: Alignment.bottomLeft,
                child: Image.asset("assets/images/main_bottom.png", width: 90),
              ),
              new Align(
                alignment: Alignment.topLeft,
                child: Image.asset("assets/images/signup_top.png", width: 170),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
