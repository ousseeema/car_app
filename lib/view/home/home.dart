import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
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
      backgroundColor: colors.backgroundColor!,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(dimensions.LRpadmarg20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Icon(Icons.menu_open),
                    Spacer(),
                    Container(
                      width: dimensions.width20 * 2.5,
                      height: dimensions.height20 * 2.5,
                      decoration: BoxDecoration(
                          color: colors.buttontextcolor,
                          borderRadius:
                              BorderRadius.circular(dimensions.radius20)),
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
                        borderRadius:
                            BorderRadius.circular(dimensions.radius40),
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
                        TextField(
                          controller: searchController,
                          decoration: InputDecoration(
                            hintText: "Search brands, price and more",
                            hintStyle: TextStyle(
                                color: Colors.grey[200],
                                fontSize: dimensions.font10,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        Container(
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
                        )
                      ],
                    ),
                  ),
                ),

                SizedBox(
                  height: dimensions.height10,
                ),
                Text("Hot Deals", style: TextStyle(
                  fontSize: dimensions.font20 + dimensions.font10/2,
                  color: Colors.black,
                  wordSpacing: 1.5,
                ),),
                
                SizedBox(
                  height: dimensions.height10,
                ),
                SizedBox(
                  height: dimensions.height20 * 10,
                  width: dimensions.width,
                  child: GetBuilder<homeController>(
                    builder: (controller) {
                      return PageView.builder(
                         
                          scrollDirection: Axis.horizontal,
                          itemCount: controller.Listagencedetails.length,
                          itemBuilder: (_, index) {
                            return Container(
                              margin: EdgeInsets.only(
                                  right: dimensions.LRpadmarg10),
                              height: dimensions.height20 * 10,
                              width: dimensions.width30*4,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(
                                      dimensions.radius20),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey[350]!,
                                          offset: const Offset(1, 1),
                                          spreadRadius: 3,
                                          blurRadius: 7,
                                        )
                                      ]
                                      
                                      
                                      ),
                              child:  Center(
                                child: Column(
                                  children: [
                                    Image.network(''),

                                    Text(''),
                                    Text('\$ 120'),
                                    Container(
                                      height: 20,
                                      width: 60,

                                    )
                                  ],
                                ),
                              ),
                            );
                          });
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
