import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:homeservice/project_UI/SelectRolePage.dart';
import 'package:homeservice/project_UI/SideMenue.dart';
import 'package:readmore/readmore.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class HomeViPage extends StatefulWidget {
  const HomeViPage({super.key});

  @override
  State<HomeViPage> createState() => _HomeViPageState();
}

class _HomeViPageState extends State<HomeViPage> {

  int _page = 0;
    GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: Color(0xffFFF),
          color: Colors.deepPurpleAccent.shade100,
          animationDuration: Duration(milliseconds: 100),
          key: _bottomNavigationKey,
          onTap: (index) {
         
          setState(() {
              _page = index;
            });

          },
          items: [
            Icon(
              Icons.home,
              color: Colors.white,
            ),
            Icon(
              Icons.favorite,
              color: Colors.white,
            ),
            Icon(
              Icons.shop,
              color: Colors.white,
            ),
          ]),
      drawer: Padding(
        padding: EdgeInsets.only(left: 22.0),
        child: CustomDrawer(),
      ),
      appBar: AppBar(
        // automaticallyImplyLeading: false,
        iconTheme:
            IconThemeData(size: 38, color: Color.fromARGB(255, 30, 12, 230)),
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22.0, vertical: 22),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Column(
              children: [
                Text(
                  'Current Location',
                  style: TextStyle(fontSize: 15),
                ),
                Text(
                  '15A, James Street',
                  style: TextStyle(fontSize: 15),
                ),
              ],
            )
            // IconButton(
            //   onPressed: () {},
            //   icon: Icon(
            //     Icons.home_outlined,
            //     size: 29,
            //   ),
            // ),
            // IconButton(
            //     onPressed: () {},
            //     icon: Icon(
            //       Icons.list_alt_outlined,
            //       size: 29,
            //     )),
            // IconButton(
            //     onPressed: () {},
            //     icon: Icon(
            //       Icons.notifications_none,
            //       size: 29,
            //     )),
            // IconButton(
            //     onPressed: () {},
            //     icon: FaIcon(
            //       Icons.menu,
            //       size: 29,
            //     ))
          ]),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: double.infinity,
                  color: Color(0xffFFFFFF),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Hello Ali"),
                      Text(
                        'What you are looking for today',
                        style: TextStyle(
                            fontSize: 19, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 22,
                      ),
                      Center(
                        child: Container(
                            width: 371,
                            child: Center(
                              child: TextField(
                                decoration: InputDecoration(
                                    hintText: 'Search what you need...',
                                    suffixIcon: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(17),
                                            color: Color(0xff6759FF),
                                          ),
                                          child: IconButton(
                                            icon: Icon(
                                              Icons.search,
                                              color: Colors.white,
                                            ),
                                            onPressed: () {},
                                          )),
                                    ),
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(33))),
                              ),
                            )),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 22,
              ),

              //ListViwe
              Container(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/images/ACRe.png'),
                          ),
                          Text("AC Repaire")
                        ],
                      ),
                      SizedBox(
                        width: 22,
                      ),
                      Column(
                        children: [
                          CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/images/Beauty.png'),
                          ),
                          Text('Beauty')
                        ],
                      ),
                      SizedBox(
                        width: 22,
                      ),
                      Column(
                        children: [
                          CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/images/Appliance.png'),
                          ),
                          Text('Appliance')
                        ],
                      ),
                      SizedBox(
                        width: 32,
                      ),
                      Column(
                        children: [
                          CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/images/Painting.png'),
                          ),
                          Text('Paintaing')
                        ],
                      ),
                      SizedBox(
                        width: 32,
                      ),
                      Column(
                        children: [
                          CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/images/Cleaning.png'),
                          ),
                          Text('Cleaning')
                        ],
                      ),
                      SizedBox(
                        width: 32,
                      ),
                      Column(
                        children: [
                          CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/images/Plumbing.png'),
                          ),
                          Text('Plumbing')
                        ],
                      ),
                      SizedBox(
                        width: 32,
                      ),
                      Column(
                        children: [
                          CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/images/Electronics.png'),
                          ),
                          Text('Electronics')
                        ],
                      ),
                      SizedBox(
                        width: 32,
                      ),
                      Column(
                        children: [
                          CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/images/Shifting.png'),
                          ),
                          Text('Shifting')
                        ],
                      ),
                      SizedBox(
                        width: 32,
                      ),
                      Column(
                        children: [
                          CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/images/Salon.png'),
                          ),
                          Text("Men's Salon")
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              ///////////////////////////////////////////
              ///

              SizedBox(
                height: 26,
              ),
              Container(
                width: double.infinity,
                color: Color(0xffFFFFFF),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 31.0),
                      child: Text('Cleaning Services',
                          style: TextStyle(
                              fontSize: 21, fontWeight: FontWeight.bold)),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          width: 111,
                          child: Image.asset('assets/images/1.png'),
                        ),
                        SizedBox(
                          width: 22,
                        ),
                        Container(
                          width: 111,
                          child: Image.asset('assets/images/2.png'),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                child: Image.asset('assets/images/OfferAC.png'),
              ),

              Text(_page.toString(), textScaleFactor: 10.0),
                ElevatedButton(
                  child: Text('Go To Page of index 1'),
                  onPressed: () {
                    //Page change using state does the same as clicking index 1 navigation button
                    final CurvedNavigationBarState? navBarState =
                        _bottomNavigationKey.currentState;
                      
                    navBarState?.setPage(1);
                  },
                )
            ],
          ),
        ),
      ),
    );
  }
}
