import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:job_app/utils/colors.dart';
import 'package:job_app/utils/constante.dart';
import 'package:job_app/utils/costumcontainer.dart';
import 'package:job_app/utils/demonstion.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  List<Map> listagc = [
    {
      "name": "midoun agence",
      "rating": "4.5",
      "rank": "1",
      "location": "midoun",
      "imageUrl": "noimage.png",
      "tags": " hello there"
    },
    {
      "name": "midoun agence",
      "rating": "4.5",
      "rank": "1",
      "location": "midoun",
      "imageUrl": "noimage.png",
      "tags": " hello there"
    },
    {
      "name": "midoun agence",
      "rating": "4.5",
      "rank": "1",
      "location": "midoun",
      "imageUrl": "noimage.png",
      "tags": " hello there"
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colors.backgroundColor!,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(dimensions.LRpadmarg20),
          child: Column(
            children: [
              Row(
                children: [
                  const Expanded(flex: 4, child: Text("Hi there ")),
                  Expanded(
                    //!
                    //! besh tji fiha el taswira mtaa user mtaana
                    child: Container(
                      height: dimensions.height20 * 2.5,
                      decoration: BoxDecoration(
                          color: colors.buttontextcolor,
                          borderRadius:
                              BorderRadius.circular(dimensions.radius20)),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: dimensions.height20,
              ),
              Container(
                height: 400,
                width: Get.context!.width,
                child: ListView.builder(
                    padding: EdgeInsets.only(
                        left: dimensions.LRpadmarg20,
                        right: dimensions.LRpadmarg20,
                        top: dimensions.TBpadmarg20,
                        bottom: dimensions.TBpadmarg20),
                             
                    //scrollDirection: Axis.horizontal,
                    itemCount: listagc.length,
                    itemBuilder: (_, index) {
                      return Container(
                        height: 300,
                        width: 200,
                        color: Colors.red,
                      );
                      /* costumcontainer(
                          name: listagc[index]["name"],
                          rating: listagc[index]["rating"],
                          location: listagc[index]["location"],
                          imageUrl: listagc[index]["imageUrl"],
                          tags: listagc[index]["tags"],
                          rank: listagc[index]["rank"]);*/
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
