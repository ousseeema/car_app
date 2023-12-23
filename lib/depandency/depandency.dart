import 'package:get/get.dart';
import 'package:job_app/controller/afficheController.dart';
import 'package:job_app/controller/homeController.dart';

class dep {

 static void init(){
    Get.lazyPut(() => afficheController());
    Get.lazyPut(() => homeController());


  }


}