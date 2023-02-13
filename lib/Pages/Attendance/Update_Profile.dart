import 'package:flutter/material.dart';
import 'package:grabview/Pages/Attendance/Profile.dart';
import 'package:grabview/widgets/custom_appbar.dart';
import 'package:grabview/widgets/custom_navbar.dart';

class ProfileUpdate extends StatefulWidget {
  const ProfileUpdate({Key? key}) : super(key: key);

  @override
  State<ProfileUpdate> createState() => _ProfileUpdateState();
}

class _ProfileUpdateState extends State<ProfileUpdate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomNavbar(),
      appBar: CustomAppBar(
        title: 'Edit Profile',
      ),
      body: SafeArea(
        child: Column(
          children: [
            CircleAvatar(
              radius: 70,
              backgroundImage: AssetImage("assets/images/Rafi1.jpg"),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,top: 15,right: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Organization:',style: TextStyle(fontSize: 18,color: Colors.grey),),
                  SizedBox(width: 10,),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        contentPadding:
                        const EdgeInsets.symmetric(vertical: 5.0, horizontal: 50),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey.shade200,width: 5),
                            borderRadius: BorderRadius.circular(50)),
                        hintText: 'Organization Name',
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,top: 15,right: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Position:',style: TextStyle(fontSize: 18,color: Colors.grey),),
                  SizedBox(width: 10,),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        contentPadding:
                        const EdgeInsets.symmetric(vertical: 5.0, horizontal: 100),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey.shade200,width: 5),
                            borderRadius: BorderRadius.circular(50)),
                        hintText: 'Post',
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,top: 15,right: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Gender:',style: TextStyle(fontSize: 18,color: Colors.grey),),
                  SizedBox(width: 10,),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        contentPadding:
                        const EdgeInsets.symmetric(vertical: 5.0, horizontal: 40),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey.shade200,width: 5),
                            borderRadius: BorderRadius.circular(50)),
                        hintText: 'Male/Female/Others',
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,top: 15,right: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Email:',style: TextStyle(fontSize: 18,color: Colors.grey),),
                  SizedBox(width: 10,),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        contentPadding:
                        const EdgeInsets.symmetric(vertical: 5.0, horizontal: 20),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey.shade200,width: 5),
                            borderRadius: BorderRadius.circular(50)),
                        hintText: 'Enter your email',
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,top: 15,right: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Phone Number:',style: TextStyle(fontSize: 18,color: Colors.grey),),
                  SizedBox(width: 10,),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        contentPadding:
                        const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey.shade200,width: 5),
                            borderRadius: BorderRadius.circular(50)),
                        hintText: 'Enter your Phone Number',
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 50,),
            TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (c) =>  Profile()));
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
                        'Update',
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
