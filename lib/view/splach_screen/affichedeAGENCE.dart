import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:job_app/utils/costumcontainer.dart';
import 'package:job_app/utils/demonstion.dart';
import 'package:job_app/view/mainscreen/mainscreen.dart';

class affiche extends StatefulWidget {
  const affiche({super.key});

  @override
  State<affiche> createState() => _afficheState();
}

class _afficheState extends State<affiche> {
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
    } ,
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
    }, {
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  SafeArea(
        child: Column(
          children: [
            SizedBox(height: dimensions.height10,),
           const  Center(
              child: Text("ALL OF YOUR AGENCE IN ONE PLACE ",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
              ),
            ),
            SizedBox(
              height: dimensions.height20,
            ),
        
            SizedBox(
                   
                      height: dimensions.height-100,
                      child: MasonryGridView.builder(
                        itemCount:listagc.length ,
                        gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2 ,),
                         itemBuilder: (_, index){
                          return GestureDetector(
                            onTap: () {

                              Get.to(()=>const mainscreen());
                            },
                            child: costumcontainer(
                                   index : index,
                                  name: listagc[index]["name"],
                                  imageUrl: listagc[index]["imageUrl"],
                                 ),
                          );
            
                         }),
                    ),
          ],
        ),
      ),
    );
  }
}