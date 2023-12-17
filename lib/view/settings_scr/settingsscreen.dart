import 'package:flutter/material.dart';
import 'package:job_app/utils/colors.dart';

class settingsPage extends StatefulWidget {
  const settingsPage({super.key});

  @override
  State<settingsPage> createState() => _settingsPageState();
}

class _settingsPageState extends State<settingsPage> {
  @override
  Widget build(BuildContext context) {
 return  Scaffold(
   backgroundColor: colors.backgroundColor!,
      body: const Center(child: Text('settings page '),),
    );
  }
}