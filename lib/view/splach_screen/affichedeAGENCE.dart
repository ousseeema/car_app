import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:job_app/utils/costumcontainer.dart';
import 'package:job_app/utils/demonstion.dart';

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
      body:  SizedBox(
             
                height: dimensions.height-200,
                child: MasonryGridView.builder(
                  itemCount:listagc.length ,
                  gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2 ,),
                   itemBuilder: (_, index){
                    return costumcontainer(
                           index : index,
                          name: listagc[index]["name"],
                          rating: listagc[index]["rating"],
                          location: listagc[index]["location"],
                          imageUrl: listagc[index]["imageUrl"],
                          tags: listagc[index]["tags"],
                          rank: listagc[index]["rank"]);

                   }),
              ),
    );
  }
}