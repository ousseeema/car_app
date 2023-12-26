import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:job_app/controller/afficheController.dart';
import 'package:job_app/controller/homeController.dart';
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
  final TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Icon(Icons.menu_open),
                const Spacer(),
                Container(
                  width: dimensions.width20 * 2.5,
                  height: dimensions.height20 * 2.5,
                  decoration: BoxDecoration(
                      color: colors.buttontextcolor,
                      borderRadius: BorderRadius.circular(dimensions.radius20)),
                )
              ],
            ),
            SizedBox(
              height: dimensions.height10,
            ),
            Text(
              "Find the best car",
              style: TextStyle(
                fontSize: dimensions.font20 + dimensions.font10,
                color: Colors.black,
                wordSpacing: 1.5,
              ),
            ),
            Text(
              "Smartly",
              style: TextStyle(
                  fontSize: dimensions.font20 + dimensions.font10,
                  color: Colors.blue[700],
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: dimensions.height10,
            ),
            Center(
              child: Container(
                height: dimensions.height10 * 5,
                width: dimensions.width30 * 12,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(dimensions.radius40),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey[350]!,
                        offset: const Offset(1, 1),
                        spreadRadius: 5,
                        blurRadius: 8,
                      )
                    ]),
                child: Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: TextField(
                        controller: searchController,
                        decoration: InputDecoration(
                          enabledBorder: InputBorder.none,
                          hintText: "Search brands, price and more",
                          hintStyle: TextStyle(
                              color: Colors.grey[200],
                              fontSize: dimensions.font10,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        height: dimensions.height10 * 5,
                        width: dimensions.width10 * 2,
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.circular(dimensions.radius40)),
                        child: Icon(
                          Icons.search,
                          color: Colors.blue[700],
                          size: dimensions.icon16,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: dimensions.height10,
            ),
            Text(
              "Hot Deals",
              style: TextStyle(
                fontSize: dimensions.font20 + dimensions.font10 / 2,
                color: Colors.black,
                wordSpacing: 1.5,
              ),
            ),
            SizedBox(
              height: dimensions.height10,
            ),
            SizedBox(
              height: dimensions.height20 * 16,
              width: dimensions.width,
              child: GetBuilder<afficheController>(
                builder: (controller) {
                  return ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: controller.listagc.length,
                      itemBuilder: (_, index) {
                        return Container(
                            margin:
                                EdgeInsets.only(right: dimensions.LRpadmarg10),
                            height: dimensions.height20 * 17,
                            width: dimensions.width30 * 9,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.circular(dimensions.radius20),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey[350]!,
                                    offset: const Offset(1, 1),
                                    spreadRadius: 3,
                                    blurRadius: 7,
                                  )
                                ]),
                            child: Stack(
                              children: [
                                Positioned(
                                  top: 0,
                                  left: 0,
                                  right: 0,
                                  child: Container(
                                    height: 150,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      image: DecorationImage(
                                        image: AssetImage(
                                            "images/${controller.listagc[index]["imageUrl"]}"),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  bottom: 120,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                            "Toyota",
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold),
                                          ),
                                    ),
                                         ),
                                           Positioned(
                                  bottom: 90,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                            "\$ 200",
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold),
                                          ),
                                    ),
                                    
                                         ),
                                         Positioned(
                                          bottom:30,
                                          right: 40,
                                          left: 40,

                                           child: Container(
                                            height: 50,
                                            decoration: BoxDecoration(
                                              color: Colors.white, 
                                              borderRadius: BorderRadius.circular(40),
                                              border: Border.all(
                                                color: Colors.blue,
                                                width: 2
                                              )


                                            ),
                                            child :const  Center(child: 
                                            Text("View Promo", 
                                            style: TextStyle(
                                              color: Colors.blue,
                                              fontSize: 17,
                                              fontWeight: FontWeight.bold)
                                            ),) 
                                           ),
                                         )



                              ],
                            ));
                      });
                },
              ),
            ),
            SizedBox(
              height: dimensions.height20,
            ),
            SizedBox(
              height: dimensions.height20 * 10,
              width: dimensions.width,
              child: ListView.builder(
                  itemCount: 4,
                  itemBuilder: (_, index) {
                    return Container();
                  }),
            )
          ],
        ),
      ),
    );
  }
}
