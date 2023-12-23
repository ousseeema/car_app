import 'package:get/get.dart';

class   afficheRepo extends  GetConnect implements GetxService {


  Future<Response>getallagence(){
    return get('http://localhost:3000/agence');
  }

}