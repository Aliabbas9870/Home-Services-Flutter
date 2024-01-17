import 'package:flutter/material.dart';
import 'package:homeservice/project_UI/profilePage.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
       
      backgroundColor: Color(0xff6759FF),
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Color(0xff6759FF),
            ),
            child: Center(
              child: ListTile(
                onTap: (){        Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => ProfilePage())));},
                leading: Container(
                  width: 66, 
                  height: 119,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage(
                      'assets/images/mypic.jpg',
                    ), 
                  ),
                ),
                title: Text(
                  'Ali Abbas',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                subtitle: Text(
                  'aliab7357@gmail.com',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical:22.0,horizontal: 33),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
            
              Container(child: Row(
                
                crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start,
                children: [
                Icon(Icons.payment,color: Colors.white,),SizedBox(width: 11,),
                Text('Payments Methods',style: TextStyle(color: Colors.white,fontSize: 18),)
              ]),),

                    SizedBox(height: 28,),
               Container(child: Row(
                
                crossAxisAlignment: CrossAxisAlignment.center, mainAxisAlignment: MainAxisAlignment.start,
                children: [
                Icon(Icons.location_on_outlined,color: Colors.white,),SizedBox(width: 11,),
                Text('Address',style: TextStyle(color: Colors.white,fontSize: 18),)
              ]),),
              SizedBox(height: 28,),
               Container(child: Row(
                
                crossAxisAlignment: CrossAxisAlignment.center, mainAxisAlignment: MainAxisAlignment.start,
                children: [
                Icon(Icons.notifications_active_outlined,color: Colors.white,),SizedBox(width: 11,),
                Text('Notification',style: TextStyle(color: Colors.white,fontSize: 18),)
              ]),),   
              
                 SizedBox(height: 28,),
                 Container(child: Row(
                
                crossAxisAlignment: CrossAxisAlignment.center, mainAxisAlignment: MainAxisAlignment.start,
                children: [
                Icon(Icons.offline_pin_sharp,color: Colors.white,),SizedBox(width: 11,),
                Text('Offers',style: TextStyle(color: Colors.white,fontSize: 18),)
              ]),), 
              SizedBox(height: 28,),
                 Container(child: Row(
                
                crossAxisAlignment: CrossAxisAlignment.center, mainAxisAlignment: MainAxisAlignment.start,
                children: [
                Icon(Icons.person_outlined,color: Colors.white,),SizedBox(width: 11,),
                Text('Refer a Friend',style: TextStyle(color: Colors.white,fontSize: 18),)
              ]),),  
               SizedBox(height: 28,),
                 Container(child: Row(
                
                crossAxisAlignment: CrossAxisAlignment.center, mainAxisAlignment: MainAxisAlignment.start,
                children: [
                Icon(Icons.call,color: Colors.white,),SizedBox(width: 11,),
                Text('Support',style: TextStyle(color: Colors.white,fontSize: 18),)
              ]),),  
            SizedBox(height: 22,),
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Text('Services',style: TextStyle(color: Colors.white,fontSize: 18),),
               ),
                Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Text('Finance Sector',style: TextStyle(color: Colors.white,fontSize: 18),),
               )
          
           
            
            ],),
          ),

       
          // Add more items as needed
        ],
      ),
    );
  }
}





