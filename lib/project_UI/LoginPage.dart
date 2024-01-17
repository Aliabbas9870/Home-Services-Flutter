import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:homeservice/project_UI/HomeV1.dart';
import 'package:homeservice/project_UI/SignUpPage.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(height: 21),
          Center(child: Image.asset('assets/images/logo.png')),
          Center(
            child: Text(
              'Expert Person',
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff6759FF)),
            ),
          ),
          SizedBox(
            height: 54,
          ),
          Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 17.0),
                child: Text(
                  'Sign In',
                  style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff6759FF)),
                ),
              )),
          SizedBox(
            height: 11,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 22.0, right: 33),
            child: Container(
              child: Column(
                children: [
                  SizedBox(
                    height: 14,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.email),
                      disabledBorder: InputBorder.none,
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(24)),
                      hintText: 'Enter Your Email',
                      label: Text(' Enter Your Email'),
                    ),
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      disabledBorder: InputBorder.none,
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(24)),
                      prefixIcon: Icon(Icons.password),
                      label: Text(' Enter Your Password'),
                      hintText: 'Enter Your Password',
                    ),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => LoginPage())));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xff6759FF),
                          borderRadius: BorderRadius.circular(66)),
                      width: 202,
                      child: TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: ((context) => HomeViPage())));
                          },
                          child: Text(
                            'Sign In',
                            style: TextStyle(
                                fontSize: 19,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          )),
                    ),
                  ),
                  SizedBox(
                    height: 13,
                  ),
                  Text(
                    'Sign in with',
                    style: TextStyle(
                      fontSize: 17,
                    ),
                  ),
                  SizedBox(
                    height: 13,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 32,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                            height: 71,
                            width: 81,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all()),
                            child: Image.asset(
                              'assets/images/G.png',
                              fit: BoxFit.cover,
                            )),
                      ),
                      SizedBox(
                        width: 22,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                            width: 78,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(11),
                                border: Border.all()),
                            height: 70,
                            child: Center(
                              child: Image.asset(
                                'assets/images/ff.jpg',
                              ),
                            )),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Create a New Account?',
                        style: TextStyle(fontSize: 16,color: Colors.grey),
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: ((context) => SignUpPage())));
                          },
                          child: Text(
                            'Sign up',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff6759FF)),
                          )),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
