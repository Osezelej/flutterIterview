import 'package:flutter/material.dart';
import 'package:flutter_iterview/title.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
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
          Title_(title: 'Sign up'),
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
            onPressed: () {},
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                'Sign up',
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
