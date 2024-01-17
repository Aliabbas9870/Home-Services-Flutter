import 'package:flutter/material.dart';
import 'dart:async';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:homeservice/project_UI/LoginPage.dart';
import 'package:homeservice/project_UI/SelectRolePage.dart';

class FirstPageSplash extends StatefulWidget {
  const FirstPageSplash({Key? key}) : super(key: key);

  @override
  State<FirstPageSplash> createState() => _FirstPageSplashState();
}

class _FirstPageSplashState extends State<FirstPageSplash> {
  void initState() {
    super.initState();

    Timer(
      Duration(seconds: 2),
      () {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) => OnFirstPage1(),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff6759FF),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Text(
              "Welcome To Our App",
              style: TextStyle(
                  fontSize: 31,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}

class OnFirstPage1 extends StatefulWidget {
  const OnFirstPage1({Key? key}) : super(key: key);

  @override
  State<OnFirstPage1> createState() => _OnFirstPage1State();
}

class _OnFirstPage1State extends State<OnFirstPage1> {
  List<String> onTabs = [
    "assets/images/man2.png",
    "assets/images/grl3.png",
    "assets/images/grl1.png",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 99,
          ),
          Container(
            height: 300, // Adjust the height as needed
            child: PageView.builder(
              itemCount: 3,
              itemBuilder: ((context, index) => ClipRRect(
                  borderRadius: BorderRadius.circular(74),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      onTabs[index],
                      height: 377,
                      fit: BoxFit.fill,
                    ),
                  ))),
            ),
          ),
          SizedBox(
            height: 44,
          ),
          Center(
              child: Text(
            'Professional Expert worker',
            style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
          )),
          Center(
              child: Text(
            'at your home',
            style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
          )),
          SizedBox(
            height: 22,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
                child: Text(
              ' Lorem ipsum is a placeholder text commonly',
              style: TextStyle(fontSize: 16),
            )),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 2.0),
            child: Center(
                child: Text(
              'used to demonstrate the visual.',
              style: TextStyle(fontSize: 16),
            )),
          ),
          SizedBox(
            height: 84,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => SelectRolePage())));
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
                            builder: ((context) => SelectRolePage())));
                  },
                  child: Text(
                    'Get Started',
                    style: TextStyle(
                        fontSize: 19,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  )),
            ),
          )
        ],
      ),
    );
  }
}
