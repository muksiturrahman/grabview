import 'package:flutter/material.dart';
import 'package:grabview/Pages/Attendance/Profile.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  final String title;

  const CustomAppBar({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      centerTitle: true,
      title: Text(
        title,
        style: Theme.of(context).textTheme.headline4!.copyWith(color: Colors.orange),
      ),
      iconTheme: const IconThemeData(color: Colors.orange),
      actions: [
        IconButton(
            icon: const Icon(Icons.person_pin,size: 35,),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (c) =>  Profile()));
            },),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60.0);
}
