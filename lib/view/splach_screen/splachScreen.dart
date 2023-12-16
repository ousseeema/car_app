import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:job_app/utils/colors.dart';
import 'package:job_app/utils/demonstion.dart';
import 'package:job_app/view/home/homepage.dart';

class splachscreen extends StatefulWidget {
  const splachscreen({super.key});

  @override
  State<splachscreen> createState() => _splachscreenState();
}

class _splachscreenState extends State<splachscreen>
    with TickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> animation;
  Future<void> loadresources() async {
    // loading ressources that we need in ower application
    // loading list of cars and list off available cars
  }

  @override
  void initState() {
    // TODO: implement initState
    loadresources();
    controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 4))
            .forward() as AnimationController;
    animation = CurvedAnimation(parent: controller, curve: Curves.elasticIn);
    Timer(const Duration(seconds: 5), () {
      // Get.toNamed to home screen
      Get.to(()=>const HomePage());
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colors.mainColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ScaleTransition(
            scale: animation,
            child: Center(
              child: Image(
                image: const AssetImage("images/splachscreen.png"),
                width: dimensions.splachwidth,
                height: dimensions.splachheight,
              ),
            ),
          )
        ],
      ),
    );
  }
}
