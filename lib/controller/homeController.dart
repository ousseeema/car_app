// ignore_for_file: non_constant_identifier_names, camel_case_types

import 'package:get/get.dart';
import 'package:job_app/controller/afficheController.dart';

class homeController extends GetxController{
  int PageViewSelectedIndex = 0;
 
 List Listagencedetails =Get.find<afficheController>().selectedagence;

   
   changeindex(value){
      PageViewSelectedIndex = value;
      update();
   }
  




}