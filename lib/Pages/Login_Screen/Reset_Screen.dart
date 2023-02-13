import 'package:flutter/material.dart';
import 'package:grabview/Pages/Login_Screen/OTP_Screen.dart';
import 'package:grabview/Pages/Screens.dart';

class Reset extends StatefulWidget {
  const Reset({Key? key}) : super(key: key);

  @override
  State<Reset> createState() => _ResetState();
}

class _ResetState extends State<Reset> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 120,
            horizontal: 25,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset("assets/images/logo-sm.png"),
              SizedBox(height: 20,),
              Text(
                "Reset",
                style: TextStyle(

                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                    color: Colors.orange),
              ),
              SizedBox(height: 30,),
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
              ),
              SizedBox(height: 50,),
              ElevatedButton(
                child: Text(
                  "Reset",
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
                          builder: (c) =>  OTPscreen()));
                },
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Back to',style: TextStyle(color: Colors.grey,fontSize: 15),),
                  SizedBox(width: 10,),
                  GestureDetector(
                      onTap: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (c) =>  SignUp()));
                      },
                      child: Text('Sign In',style: TextStyle(color: Colors.orange,fontWeight: FontWeight.bold,fontSize: 16),)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

