import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:bottom_bar/bottom_bar.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);
  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController emailAddressController = TextEditingController();
  TextEditingController genderController = TextEditingController();
  TextEditingController dobController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          
        ),
        body: SingleChildScrollView(
          child:Column(
                children: [
                 Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Profile',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 21,
                    ),
                  ),
                  Container(
                    width: 111,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(22),
                        color: Color(0xffFFFFFF)),
                    child: Row(
                      children: [Text('Edit Profile'), Icon(Icons.edit)],
                    ),
                    height: 44,
                  )
                ],
              ),
            ),
            Container(
              width: double.infinity,
              color: Color(0xffFFFFFF),
              child: ListTile(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) => ProfilePage())));
                },
                leading: Container(
                  width: 66,
                  height: 119,
                  child: CircleAvatar(
                    backgroundColor: Colors.grey,
                    backgroundImage: AssetImage(
                      'assets/images/mypic.jpg',
                    ),
                  ),
                ),
                title: Text(
                  'Ali Abbas',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
                subtitle: Text(
                  'aliab7357@gmail.com',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 22,
            ),

                  Padding(
                    padding: const EdgeInsets.all(17.0),
                    child: Container(
                      width: double.infinity,
                      color: Color(0xffFFFFFF),
                      height: 383,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Phone Number',
                              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            TextField(
                              controller: phoneNumberController,
                              onChanged: (value) {                          
                              },
                              decoration: InputDecoration(
                                fillColor: Color(0xffF5F5F5),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(22),
                                ),
                              ),
                            ),
                            SizedBox(height: 17,),
                            Text(
                              'Email Address',
                              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            TextField(
                              controller: emailAddressController,
                              onChanged: (value) {
                     
                              },
                              decoration: InputDecoration(
                                fillColor: Color(0xffF5F5F5),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(22),
                                ),
                              ),
                            ),
                            Text(
                              'Gender',
                              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            TextField(
                              controller: genderController,
                              onChanged: (value) {
                            
                              },
                              decoration: InputDecoration(
                                fillColor: Color(0xffF5F5F5),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(22),
                                ),
                              ),
                            ),
                            SizedBox(height: 17,),
                            Text(
                              'Date Of Birth',
                              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            TextField(
                              controller: dobController,
                              onChanged: (value) {
                            
                              },
                              keyboardType: TextInputType.numberWithOptions(),
                              decoration: InputDecoration(
                                fillColor: Color(0xffF5F5F5),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(22),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
         


        
                ],))
              );
            }
}
