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
  void initState() {
    // TODO: implement initState
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
                padding:  EdgeInsets.only(top: dimensions.LRpadmarg10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(width: dimensions.width20,),
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
                      child:  Center(
                        child: Icon(
                          CupertinoIcons.person,
                          color: Colors.white,
                           size: dimensions.icon16 + 10,
                
                        ),
                      ),
                    ),
                     SizedBox(width: dimensions.width20,),
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
                  height: 100,
                  width: dimensions.width,
                  child:  GetBuilder<searchController>(
                      builder: (controller) {
                        return ListView.builder(
                          scrollDirection: Axis.horizontal,
                            itemCount:
                           controller.ListOfBrandes.length,
                            itemBuilder: (_, index) {
                              return Container(
                                margin: EdgeInsets.only(left: dimensions.LRpadmarg10),
                                height: dimensions.height10*12,
                                width: dimensions.width10*10 ,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(
                                      dimensions.radius20),
                                ),
                                child: Column(
                             
                                  children: [
                                    Container(
                                      height: dimensions.height10*9,
                                      width: dimensions.width30*3,
                                      decoration: BoxDecoration(
                                       
                                        image: DecorationImage(
                                            image: AssetImage(
                                                "images/${controller.ListOfBrandes[index]["image"]}"),
                                            fit: BoxFit.cover),
                                      ),
                                    ),
                                    
                                    SizedBox(
                                      height: dimensions.height10,
                                    ), 
                                    Text(
                                      "${controller.ListOfBrandes[index]["brandname"]}", 
                                     maxLines: 3,
                                     overflow: TextOverflow.ellipsis,
                                      style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 10 ,
                                      fontFamily: "PT_serif"
                                      

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
    );
  }
}
