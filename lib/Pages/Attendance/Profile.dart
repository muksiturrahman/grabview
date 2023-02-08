import 'package:flutter/material.dart';
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
    );
  }
}
