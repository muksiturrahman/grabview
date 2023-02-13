import 'package:flutter/material.dart';
import 'package:grabview/Pages/Screens.dart';

class OTPscreen extends StatefulWidget {
  const OTPscreen({Key? key}) : super(key: key);

  @override
  State<OTPscreen> createState() => _OTPscreenState();
}

class _OTPscreenState extends State<OTPscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 35),
                  child: Image.asset('assets/images/logo-sm.png',height: 100,width: 250,),
                ),
                const Text('OTP Verification',style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.black,
                ),),
                const SizedBox(height: 20,),
                const Text('We have sent a code to your email muksitur35****',style: TextStyle(fontSize: 12,color: Colors.black54),),

                const SizedBox(height: 40,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(width: 30,),
                    Material(
                      child: SizedBox(
                        height: 60,
                        width: 60,
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15)),
                            hintText: '',
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 30,),
                    Material(
                      child: SizedBox(
                        height: 60,
                        width: 60,
                        //padding: const EdgeInsets.only(left: 10, right: 10),
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15)),
                            hintText: '',
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 30,),
                    Material(
                      child: SizedBox(
                        height: 60,
                        width: 60,
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15)),
                            hintText: '',
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 30,),
                    Material(
                      child: SizedBox(
                        height: 60,
                        width: 60,
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15)),
                            hintText: '',
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 50,),
                Material(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 18, right: 18),
                    child: TextButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: ((context) => const Profile())),);
                      },
                      child: Container(
                        width: 520,
                        height: 65,
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: const Center(
                          child: Text(
                            'Verify Account',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),),
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:  [
                    const Padding(padding: EdgeInsets.only(bottom: 10)),
                    const Text("Didn't recieve code?", style: TextStyle(fontSize: 12,color: Colors.black54),),
                    TextButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: ((context) => const OTPscreen())),);
                      },
                      child: const Text('Resend', style: TextStyle(color: Colors.deepOrangeAccent, fontSize: 15),
                      ),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
