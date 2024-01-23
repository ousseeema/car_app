import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:job_app/depandency/depandency.dart';
import 'package:job_app/view/splach_screen/splachScreen.dart';

void main() {
    dep.init();
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const splachscreen()  
    );
  }
}
