  import 'package:get/get.dart';

class CarDetailsController extends GetxController{


  Map<dynamic , dynamic>? car;


void addCar(Map<dynamic,dynamic> car){
  this.car = car;
  update();
  
}

}