import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:grabview/Pages/Attendance/Attendance.dart';
import 'package:grabview/Pages/Login_Screen/Reset_Screen.dart';
import 'package:grabview/Pages/Screens.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();

}

Widget buildEmail() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        "Email",
        style: TextStyle(
            color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
      ),
      SizedBox(
        height: 10,
      ),
      Container(
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                  color: Colors.black26, blurRadius: 6, offset: Offset(0, 2)),
            ]),
        height: 60,
        child: TextField(
          keyboardType: TextInputType.emailAddress,
          style: TextStyle(
            color: Colors.black87,
          ),
          decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14),
              prefixIcon: Icon(
                Icons.email,
                color: Colors.orange,
              ),
              hintText: "Email",
              hintStyle: TextStyle(
                color: Colors.black38,
              )),
        ),
      )
    ],
  );
}

Widget buildPassword() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        "Password",
        style: TextStyle(
            color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
      ),
      SizedBox(
        height: 10,
      ),
      Container(
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                  color: Colors.black26, blurRadius: 6, offset: Offset(0, 2)),
            ]),
        height: 60,
        child: TextField(
          obscureText: true,
          style: TextStyle(
            color: Colors.black87,
          ),
          decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.only(top: 14),
            prefixIcon: Icon(
              Icons.lock_open,
              color: Colors.orange,
            ),
            hintText: "Password",
            hintStyle: TextStyle(
              color: Colors.black38,
            ),
          ),
        ),
      )
    ],
  );
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: GestureDetector(
          child: Stack(
            children: [
              Container(
                height: double.infinity,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white
                ),
                child: SingleChildScrollView(
                  physics: AlwaysScrollableScrollPhysics(),
                  padding: EdgeInsets.symmetric(
                    vertical: 120,
                    horizontal: 25,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/images/logo-sm.png"),
                      SizedBox(height: 20,),
                      Text(
                        "Sing in",
                        style: TextStyle(

                            fontWeight: FontWeight.bold,
                            fontSize: 40,
                            color: Colors.orange),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      buildEmail(),
                      SizedBox(height: 20,),
                      buildPassword(),

                      SizedBox(
                        height: 50,
                      ),
                      ElevatedButton(
                        child: Text(
                          "Log in",
                          style:
                          TextStyle(color: Colors.white, fontWeight: FontWeight.bold,fontSize: 20),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          padding: EdgeInsets.symmetric(horizontal: 80, vertical: 15),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (c) =>  Attendance()));
                        },
                      ),
                      SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('HaVe No AcCoUnT?',style: TextStyle(color: Colors.grey,fontSize: 15),),
                          SizedBox(width: 10,),
                          GestureDetector(
                            onTap: (){
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (c) =>  SignUp()));
                            },
                              child: Text('SiGnUp',style: TextStyle(color: Colors.orange,fontWeight: FontWeight.bold,fontSize: 16),)),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('FoRgOt PaSsWoRd?',style: TextStyle(color: Colors.grey,fontSize: 15),),
                          SizedBox(width: 10,),
                          GestureDetector(
                            onTap: (){
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (c) =>  Reset()));
                            },
                              child: Text('ReSeT nOw',style: TextStyle(color: Colors.orange,fontWeight: FontWeight.bold,fontSize: 16),)),
                        ],
                      ),

                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}