import 'package:flutter/material.dart';
import 'package:job_app/utils/colors.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
     return  Scaffold(
      backgroundColor: colors.backgroundColor!,  
      body: const Center(child: Text('home page '),),
    );
  }
  }
