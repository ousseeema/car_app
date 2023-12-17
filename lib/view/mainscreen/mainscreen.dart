// ignore_for_file: prefer_final_fields, unused_field

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:job_app/utils/colors.dart';
import 'package:job_app/utils/demonstion.dart';
import 'package:job_app/view/account/account.dart';
import 'package:job_app/view/home/home.dart';
import 'package:job_app/view/search/search.dart';
import 'package:job_app/view/settings_scr/settingsscreen.dart';

class mainscreen extends StatefulWidget {
  const mainscreen({super.key});

  @override
  State<mainscreen> createState() => _mainscreenState();
}

class _mainscreenState extends State<mainscreen> {
  int currentIndex = 0 ;
  List<Widget> listPage=[
    const homePage(),
    const searchPage(),
    const settingsPage(), 
    const accountPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        height: dimensions.height20 * 2.8,
        color: colors.buttoncolor!,   
        backgroundColor: colors.backgroundColor!,
        buttonBackgroundColor: colors.buttoncolor!, 
        animationDuration: const Duration(milliseconds: 400),  

         onTap: (index) {
           setState(() {
             currentIndex = index;
           });
         },

        items: const [
        Icon(Icons.home, color: Colors.black,), 
        Icon(Icons.search, color: Colors.black),
        Icon(Icons.settings, color: Colors.black),
        Icon(Icons.person, color: Colors.black)
      ]),


      body: listPage[currentIndex],
    );
  }
}
