  import 'package:get/get.dart';

class CarDetailsController extends GetxController{


  Map<dynamic , dynamic>? car;
 List<String> detailsList =[
  "1.5L TurboCharge",
  " 8 Speed CVT",
  "Symethic Leather",
  "360 Cameras",
  "Black Phantom",
  "Pearl White"

 ];

void addCar(Map<dynamic,dynamic> car){
  this.car = car;
  update();
  
}

}