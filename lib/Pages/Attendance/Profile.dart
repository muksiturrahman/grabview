import 'package:flutter/material.dart';
import 'package:grabview/Pages/Attendance/Update_Profile.dart';
import 'package:grabview/widgets/custom_appbar.dart';
import 'package:grabview/widgets/custom_navbar.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomNavbar(),
      appBar: CustomAppBar(
        title: 'Profile',
      ),
      body: Container(
        padding: EdgeInsets.all(50),
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            CircleAvatar(
              radius: 80,
              backgroundImage: AssetImage("assets/images/Rafi1.jpg"),
            ),
            SizedBox(height: 10,),
            Text("Muksitur Rahman Rafi",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            Text('Flutter Developer',style: TextStyle(fontSize: 12,color: Colors.black54),),
            SizedBox(height: 50,),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Organization "),SizedBox(height: 10,),
                    Text("Position "),SizedBox(height: 10,),
                    Text("Gender "),SizedBox(height: 10,),
                    Text("Email "),SizedBox(height: 10,),
                    Text("Phone Number "),SizedBox(height: 10,),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 18.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(": GrapView "),SizedBox(height: 10,),
                      Text(": Software Engineer Apprentice"),SizedBox(height: 10,),
                      Text(": Male"),SizedBox(height: 10,),
                      Text(": muksitur35-466@diu.edu.bd"),SizedBox(height: 10,),
                      Text(": 01734128544"),SizedBox(height: 10,),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 50,),
            TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (c) =>  ProfileUpdate()));
                },
                child: Container(
                  height: 70,
                  width: 200,
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    border: Border.all(width: 4, color: Colors.grey.shade100),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Center(
                      child: Text(
                        'Update You Profile',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w400),
                      )),
                )),
          ],
        ),
      ),
    );
  }
}
