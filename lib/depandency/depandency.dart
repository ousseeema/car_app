import 'package:get/get.dart';
import 'package:job_app/controller/afficheController.dart';
import 'package:job_app/controller/detailsCarController.dart';
import 'package:job_app/controller/homeController.dart';
import 'package:job_app/controller/searchController.dart';

class dep {

 static void init(){
    Get.lazyPut(() => afficheController());
    Get.lazyPut(() => homeController());
    Get.lazyPut(() => searchController());
    Get.lazyPut(() => CarDetailsController());
  }


}