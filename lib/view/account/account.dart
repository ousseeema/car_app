import 'package:flutter/material.dart';
import 'package:job_app/utils/colors.dart';

class accountPage extends StatefulWidget {
  const accountPage({super.key});

  @override
  State<accountPage> createState() => _accountPageState();
}

class _accountPageState extends State<accountPage> {
  @override
  Widget build(BuildContext context) {
  return  Scaffold(
     backgroundColor: colors.backgroundColor!,
      body: const Center(child: Text('account page '),),
    );
  }
}