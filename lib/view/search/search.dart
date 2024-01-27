import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:job_app/controller/afficheController.dart';
import 'package:job_app/controller/detailsCarController.dart';
import 'package:job_app/controller/searchController.dart';
import 'package:job_app/utils/colors.dart';
import 'package:job_app/utils/demonstion.dart';
import 'package:job_app/view/detailsCar/detailsCar.dart';

class searchPage extends StatefulWidget {
  const searchPage({super.key});

  @override
  State<searchPage> createState() => _searchPageState();
}

class _searchPageState extends State<searchPage> {
  late List brandes;
  @override
  void initState() {
    // TODO: implement initState
    brandes = Get.find<searchController>().ListOfBrandes;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colors.backgroundColor!,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: dimensions.LRpadmarg10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: dimensions.width20,
                    ),
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
                      child: Center(
                        child: Icon(
                          CupertinoIcons.person,
                          color: Colors.white,
                          size: dimensions.icon16 + 10,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: dimensions.width20,
                    ),
                  ],
                ),
              ),
              SizedBox(height: dimensions.height20),
              Padding(
                padding: EdgeInsets.only(left: dimensions.LRpadmarg20),
                child: Text("Brands",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: dimensions.font20,
                    )),
              ),
              SizedBox(height: dimensions.height20),
              Padding(
                padding: EdgeInsets.only(left: dimensions.LRpadmarg10),
                child: SizedBox(
                    height: 120,
                    width: dimensions.width,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: brandes.length,
                        itemBuilder: (_, index) {
                          return Container(
                            margin:
                                EdgeInsets.only(left: dimensions.LRpadmarg10),
                            height: dimensions.height10 * 12,
                            width: dimensions.width10 * 10,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.circular(dimensions.radius20),
                            ),
                            child: Column(
                              children: [
                                Container(
                                  height: dimensions.height10 * 8.5,
                                  width: dimensions.width30 * 3,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "images/${brandes[index]["image"]}"),
                                        fit: BoxFit.cover),
                                  ),
                                ),
                                SizedBox(
                                  height: dimensions.height10,
                                ),
                                Text("${brandes[index]["brandname"]}",
                                    maxLines: 3,
                                    overflow: TextOverflow.ellipsis,
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 10,
                                        fontFamily: "PT_serif"))
                              ],
                            ),
                          );
                        })),
              ),
              SizedBox(
                height: dimensions.height20,
              ),
              Padding(
                padding: EdgeInsets.only(left: dimensions.LRpadmarg20),
                child: Text(
                  "Available Cars",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: dimensions.width20),
                ),
              ),
              SizedBox(
                height: dimensions.height10,
              ),
              Padding(
                padding: EdgeInsets.only(left: dimensions.LRpadmarg10),
                child: SizedBox(
                  height: dimensions.height10 * 70,
                  width: dimensions.width,
                  child: GetBuilder<afficheController>(builder: (controller) {
                    return ListView.builder(
                        itemCount: controller.listagc.length,
                        itemBuilder: (_, index) {
                          return Container(
                            margin: EdgeInsets.all(dimensions.LRpadmarg10),
                            height: dimensions.height10 * 19,
                            width: dimensions.width,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                  Radius.circular(dimensions.radius20)),
                              color: Colors.white,
                            ),
                            child: Column(
                              
                              children: [
                                Container(
                                  height: dimensions.height20 * 5,
                                  width: dimensions.width20 * 6,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                      'images/${controller.listagc[index]["imageUrl"]}',
                                    ),
                                  )),
                                ), 
                                SizedBox(
                                  height: dimensions.height10,
                                ),
                                Row(
                                  children: [
                                    SizedBox(width: dimensions.width10,),
                                   Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [ 
                                       SizedBox(width: dimensions.width30,),
                                    Text(controller.listagc[index]["name"], 
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold, 
                                      fontSize: dimensions.font20
                                    ),),
                                      SizedBox(width: dimensions.width30,),
                                    const Text('\$100', 
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold, 
                                      fontSize: 16
                                    ),),
                                    ],
                                   ),
                                  const Spacer(),
                                
                                   GestureDetector(
                                    onTap: () {
                                      Get.find<CarDetailsController>().addCar(controller.listagc[index]);
                                       Get.to(const CarDetails());
                                      
                                    },
                                    child: Container(
                                      height: dimensions.height20*2.3,
                                      width: dimensions.width20*2.3,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(dimensions.radius10),
                                        color: Colors.blueAccent[700]
                                      ),
                                      child:const  Icon(Icons.arrow_forward, color: Colors.white,),
                                    ),
                                  ),
                                  
                                  SizedBox(width: dimensions.width10,),

                                  ],
                                ),
                                 SizedBox(height: dimensions.height10,),
                                
                              ],
                            ),
                          );
                        });
                  }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
