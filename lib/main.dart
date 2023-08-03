// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_iterview/title.dart';
import 'package:flutter_iterview/SignUp.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import 'package:flutter_iterview/ItemPage.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(useMaterial3: true),
    home: Mainapp(),
    onGenerateRoute: (settings) {
      switch (settings.name) {
        case '/signUp':
          return MaterialPageRoute(builder: (context) => SignUp());

        case '/items':
          return MaterialPageRoute(builder: (context) => ItemList());
        default:
      }
    },
  ));
}

class Mainapp extends StatefulWidget {
  const Mainapp({super.key});

  @override
  State<Mainapp> createState() => _MainappState();
}

class _MainappState extends State<Mainapp> {
  @override
  Widget build(BuildContext context) {
    // the loading sequence
    void showmodal() async {
      showModalBottomSheet(
          elevation: 10,
          context: context,
          builder: (context) {
            return Container(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
              color: Colors.white,
              child: Row(
                children: [
                  SpinKitRing(color: Color.fromARGB(255, 255, 175, 75)),
                  SizedBox(
                    width: 5,
                  ),
                  Text('Authenticating...'),
                ],
              ),
            );
          });
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 255, 175, 75),
        title: Text(
          '(question 4) User auth',
          style: TextStyle(
            color: Colors.black,
            fontSize: 17,
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: ListView(children: [
          SizedBox(
            height: 10,
          ),
          Title_(title: 'Login'),
          SizedBox(
            height: 10,
          ),
          TextField(
            controller: TextEditingController(text: ''),
            decoration: InputDecoration(
                labelText: 'Email',
                floatingLabelStyle:
                    TextStyle(color: Color.fromARGB(255, 255, 175, 75)),
                focusedBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: Color.fromARGB(255, 255, 175, 75)),
                  borderRadius: BorderRadius.circular(5),
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                  borderRadius: BorderRadius.circular(5),
                )),
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
            obscureText: true,
            controller: TextEditingController(text: ''),
            decoration: InputDecoration(
                labelText: 'Password',
                floatingLabelStyle:
                    TextStyle(color: Color.fromARGB(255, 255, 175, 75)),
                focusedBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: Color.fromARGB(255, 255, 175, 75)),
                  borderRadius: BorderRadius.circular(5),
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                  borderRadius: BorderRadius.circular(5),
                )),
          ),
          SizedBox(
            height: 20,
          ),
          TextButton(
            style: ButtonStyle(
                backgroundColor:
                    MaterialStatePropertyAll(Color.fromARGB(255, 255, 175, 75)),
                foregroundColor: MaterialStatePropertyAll(Colors.black)),
            onPressed: () async {
              showmodal();
              await Future.delayed(Duration(milliseconds: 1000), () {
                Navigator.of(context).pop();
              });
              showModalBottomSheet(
                  backgroundColor: Colors.white,
                  context: context,
                  builder: (context) {
                    return Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                      color: Colors.white,
                      child: Text(
                        'LOGIN SUCCESSFUL!',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 23),
                      ),
                    );
                  });

              Navigator.pushNamed(context, '/items');
            },
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                'Login',
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Center(
            child: Text(
              'OR',
              style: TextStyle(color: Colors.black),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          TextButton(
            style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(
                    Color.fromARGB(255, 192, 192, 192)),
                foregroundColor: MaterialStatePropertyAll(
                    const Color.fromARGB(255, 0, 0, 0))),
            onPressed: () {
              Navigator.pushNamed(context, '/signUp');
            },
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                'Sign Up',
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
