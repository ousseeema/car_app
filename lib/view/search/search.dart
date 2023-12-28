import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:job_app/controller/searchController.dart';
import 'package:job_app/utils/colors.dart';
import 'package:job_app/utils/demonstion.dart';

class searchPage extends StatefulWidget {
  const searchPage({super.key});

  @override
  State<searchPage> createState() => _searchPageState();
}

class _searchPageState extends State<searchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colors.backgroundColor!,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.menu_sharp,
                      size: dimensions.icon16 + 10,
                    ),
                    const Spacer(),
                    Container(
                      width: dimensions.width20 * 2.5,
                      height: dimensions.height20 * 2.5,
                      decoration: BoxDecoration(
                          //    in the future we should change this to the photo that the user uploads
                          //? image: DecorationImage(image: asset),
                          color: Colors.blue,
                          borderRadius:
                              BorderRadius.circular(dimensions.radius20)),
                      child: const Center(
                        child: Icon(
                          CupertinoIcons.person,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: dimensions.height20),
                Padding(
                  padding: EdgeInsets.only(left: dimensions.LRpadmarg10),
                  child: Text("Brands",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: dimensions.font20,
                      )),
                ),
                Padding(
                  padding: EdgeInsets.only(left: dimensions.LRpadmarg10),
                  child: SizedBox(
                    height: 100,
                    width: dimensions.width,
                    child: GetBuilder<searchController>(
                      builder: (controller) {
                        return ListView.builder(
                            itemCount: controller.ListOfBrandes.length,
                            itemBuilder: (_, index) {
                              return Container(
                                height: dimensions.height10*9,
                                width: dimensions.height10*7,
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(
                                      dimensions.radius20),
                                ),
                                child: Column(
                             
                                  children: [
                                    Image(
                                        image: AssetImage(
                                            "images/${controller.ListOfBrandes[index]["image"]}")),
                                    SizedBox(
                                      height: dimensions.height10,
                                    ), 
                                    Text("${controller.ListOfBrandes[index]["brandname"]}", style:  TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize:  dimensions.font10   

                                    ))
                                  ],
                                ),
                              );
                            });
                      },
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
