import 'package:flutter/material.dart';
import 'package:job_app/utils/colors.dart';

class searchPage extends StatefulWidget {
  const searchPage({super.key});

  @override
  State<searchPage> createState() => _searchPageState();
}

class _searchPageState extends State<searchPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
       backgroundColor: colors.backgroundColor!,
      body:const  Center(child: Text('search page '),),
    );
  }
}