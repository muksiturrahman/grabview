import 'package:flutter/material.dart';

class CustomNavbar extends StatelessWidget {
  const CustomNavbar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.white,
      child: Container(
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          IconButton(
              icon: Icon(Icons.home,color: Colors.orange,),
            onPressed: (){
            Navigator.pushNamed(context, '/');
          },),
            IconButton(
              icon: Icon(Icons.shopping_cart,color: Colors.orange,),
              onPressed: (){
                Navigator.pushNamed(context, '/Attendance');
              },),
            IconButton(
              icon: Icon(Icons.person,color: Colors.orange,),
              onPressed: (){
                Navigator.pushNamed(context, '/Profile');
              },),
        ]),
      ),
    );
  }
}
