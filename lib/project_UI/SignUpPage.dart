import 'package:flutter/material.dart';
import 'package:homeservice/project_UI/HomeV1.dart';
import 'package:homeservice/project_UI/LoginPage.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
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
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold,color: Color(0xff6759FF)),
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
                  'Sign Up',
                  style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold ,color: Color(0xff6759FF)),
                ),
              )),
          SizedBox(
            height: 14,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 22.0, right: 33),
            child: Container(
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                        label: Text(' Enter Your Full Name'),
                      hintText: 'Enter Your Full Name',
                        prefixIcon: Icon(Icons.person),
                    disabledBorder: InputBorder.none,
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(24)
                    ),
                     
                    
                            ),
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        label: Text(' Enter Your Email'),
                      hintText: 'Enter Your Email',
                         prefixIcon: Icon(Icons.email),
                        disabledBorder: InputBorder.none,
                    focusedBorder: OutlineInputBorder(  borderRadius: BorderRadius.circular(24)),
                            ),
                  ),
                  SizedBox(
                    height: 14,
                  ),
                   TextFormField(
                    decoration: InputDecoration(
                        label: Text(' Enter Your Password'),
                      hintText: 'Enter Your Password',
                        prefixIcon: Icon(Icons.password),
                        disabledBorder: InputBorder.none,
                    focusedBorder: OutlineInputBorder(  borderRadius: BorderRadius.circular(24)),
                    )),
                  SizedBox(
                    height: 14,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                       disabledBorder: InputBorder.none,
                    focusedBorder: OutlineInputBorder(  borderRadius: BorderRadius.circular(24)),
                      prefixIcon: Icon(Icons.password_rounded),
                       label: Text(' Enter Your Confirm Password'),
                      hintText: 'Enter Your  confirm Password',
                      
                            ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => HomeViPage())));
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
                            'Sign Up',
                            style: TextStyle(
                                fontSize: 19,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          )),
                    ),
                  ),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Already have an Account?',
                        style: TextStyle(fontSize: 16,color: Colors.grey),
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: ((context) => LoginPage())));
                          },
                          child: Text(
                            'Sign In',
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
