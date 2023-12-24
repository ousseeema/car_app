import 'package:get/get.dart';
import 'package:job_app/repo/afficheRepo.dart';

class afficheController extends GetxController {
  List<Map> listagc = [
    {
      "name": "midoun agence",
      "rating": "4.5",
      "rank": "1",
      "location": "midoun",
      "imageUrl": "1.jpeg",
      "tags": " hello there"
    },
    {
      "name": "midoun agence",
      "rating": "4.5",
      "rank": "1",
      "location": "midoun",
      "imageUrl": "2.jpeg",
      "tags": " hello there"
    },
    {
      "name": "midoun agence",
      "rating": "4.5",
      "rank": "1",
      "location": "midoun",
      "imageUrl": "3.jpeg",
      "tags": " hello there"
    },
    {
      "name": "midoun agence",
      "rating": "4.5",
      "rank": "1",
      "location": "midoun",
      "imageUrl": "4.jpeg",
      "tags": " hello there"
    },
    {
      "name": "midoun agence",
      "rating": "4.5",
      "rank": "1",
      "location": "midoun",
      "imageUrl": "5.jpeg",
      "tags": " hello there"
    },
    {
      "name": "midoun agence",
      "rating": "4.5",
      "rank": "1",
      "location": "midoun",
      "imageUrl": "1.jpeg",
      "tags": " hello there"
    },
    {
      "name": "midoun agence",
      "rating": "4.5",
      "rank": "1",
      "location": "midoun",
      "imageUrl": "2.jpeg",
      "tags": " hello there"
    },
    {
      "name": "midoun agence",
      "rating": "4.5",
      "rank": "1",
      "location": "midoun",
      "imageUrl": "3.jpeg",
      "tags": " hello there"
    },
    {
      "name": "midoun agence",
      "rating": "4.5",
      "rank": "1",
      "location": "midoun",
      "imageUrl": "4.jpeg",
      "tags": " hello there"
    },
    {
      "name": "midoun agence",
      "rating": "4.5",
      "rank": "1",
      "location": "midoun",
      "imageUrl": "5.jpeg",
      "tags": " hello there"
    },
    {
      "name": "midoun agence",
      "rating": "4.5",
      "rank": "1",
      "location": "midoun",
      "imageUrl": "1.jpeg",
      "tags": " hello there"
    },
    {
      "name": "midoun agence",
      "rating": "4.5",
      "rank": "1",
      "location": "midoun",
      "imageUrl": "2.jpeg",
      "tags": " hello there"
    },
    {
      "name": "midoun agence",
      "rating": "4.5",
      "rank": "1",
      "location": "midoun",
      "imageUrl": "3.jpeg",
      "tags": " hello there"
    },
    {
      "name": "midoun agence",
      "rating": "4.5",
      "rank": "1",
      "location": "midoun",
      "imageUrl": "4.jpeg",
      "tags": " hello there"
    },
    {
      "name": "midoun agence",
      "rating": "4.5",
      "rank": "1",
      "location": "midoun",
      "imageUrl": "5.jpeg",
      "tags": " hello there"
    },
    {
      "name": "midoun agence",
      "rating": "4.5",
      "rank": "1",
      "location": "midoun",
      "imageUrl": "1.jpeg",
      "tags": " hello there"
    },
    {
      "name": "midoun agence",
      "rating": "4.5",
      "rank": "1",
      "location": "midoun",
      "imageUrl": "2.jpeg",
      "tags": " hello there"
    },
    {
      "name": "midoun agence",
      "rating": "4.5",
      "rank": "1",
      "location": "midoun",
      "imageUrl": "6.jpeg",
      "tags": " hello there"
    },
    {
      "name": "midoun agence",
      "rating": "4.5",
      "rank": "1",
      "location": "midoun",
      "imageUrl": "4.jpeg",
      "tags": " hello there"
    },
    {
      "name": "midoun agence",
      "rating": "4.5",
      "rank": "1",
      "location": "midoun",
      "imageUrl": "5.jpeg",
      "tags": " hello there"
    },
    {
      "name": "midoun agence",
      "rating": "4.5",
      "rank": "1",
      "location": "midoun",
      "imageUrl": "6.jpeg",
      "tags": " hello there"
    },
    {
      "name": "midoun agence",
      "rating": "4.5",
      "rank": "1",
      "location": "midoun",
      "imageUrl": "2.jpeg",
      "tags": " hello there"
    },
    {
      "name": "midoun agence",
      "rating": "4.5",
      "rank": "1",
      "location": "midoun",
      "imageUrl": "3.jpeg",
      "tags": " hello there"
    },
    {
      "name": "midoun agence",
      "rating": "4.5",
      "rank": "1",
      "location": "midoun",
      "imageUrl": "4.jpeg",
      "tags": " hello there"
    },
    {
      "name": "midoun agence",
      "rating": "4.5",
      "rank": "1",
      "location": "midoun",
      "imageUrl": "7.jpeg",
      "tags": " hello there"
    },
    {
      "name": "midoun agence",
      "rating": "4.5",
      "rank": "1",
      "location": "midoun",
      "imageUrl": "1.jpeg",
      "tags": " hello there"
    },
    {
      "name": "midoun agence",
      "rating": "4.5",
      "rank": "1",
      "location": "midoun",
      "imageUrl": "2.jpeg",
      "tags": " hello there"
    },
    {
      "name": "midoun agence",
      "rating": "4.5",
      "rank": "1",
      "location": "midoun",
      "imageUrl": "3.jpeg",
      "tags": " hello there"
    },
    {
      "name": "midoun agence",
      "rating": "4.5",
      "rank": "1",
      "location": "midoun",
      "imageUrl": "6.jpeg",
      "tags": " hello there"
    },
    {
      "name": "midoun agence",
      "rating": "4.5",
      "rank": "1",
      "location": "midoun",
      "imageUrl": "7.jpeg",
      "tags": " hello there"
    }
  ];

  List<Map> selectedagence = [];

  void loadingagence_data() async {
    Response response = await Get.find<afficheRepo>().getallagence();
    //! handling the response from the serveur 
    //* if the response is 200 then we add the data to the listagc
    if (response.statusText == 200) {
      response.body.forEach((agence) => listagc.add(agence));
    } 
    //* else we add an empty list to the listagc for the test in the ui
    else {
      listagc = [];
    }
  }

  void addselectedagence(index) {
    selectedagence = [];
    selectedagence.add(listagc[index]);
  }
}
