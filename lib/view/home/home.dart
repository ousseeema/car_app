import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:job_app/controller/afficheController.dart';
import 'package:job_app/utils/colors.dart';
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
      backgroundColor:colors.backgroundColor!,
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
                     Icon(Icons.menu_sharp, size: dimensions.icon16+10,),
                    const Spacer(),
                    Container(
                      width: dimensions.width20 * 2.5,
                      height: dimensions.height20 * 2.5,
                      decoration: BoxDecoration(
                      //    in the future we should change this to the photo that the user uploads 
                            //? image: DecorationImage(image: asset),
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(dimensions.radius20)),
                     child: const  Center(
                      child: Icon(CupertinoIcons.person, color: Colors.white,),
                     ),
                   
                    ),

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
                        SizedBox(width: dimensions.height10,),
                        Expanded(
                          flex: 3,
                          child: Padding(
                            padding: const EdgeInsets.all(5),
                            child: TextField(
                              controller: searchController,
                              decoration: InputDecoration(
                                enabledBorder: InputBorder.none,
                                hintText: "Search brands, price and more",
                                hintStyle: TextStyle(
                                    color: Colors.grey[200],
                                              fontSize: dimensions.font10+5,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Icon(
                            Icons.search,
                            color: Colors.blue[700],
                            size: dimensions.icon24+4,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: dimensions.height20,
                ),
                Text(
                  "Hot Deals",
                  style: TextStyle(
                    fontSize: dimensions.font20 + dimensions.font10 / 2,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    wordSpacing: 1.5,
                  ),
                ),
                SizedBox(
                  height: dimensions.height10,
                ),
                Container(
                    height: dimensions.height20 * 14,
                    width: dimensions.width,
                    decoration: BoxDecoration(
                      color:colors.backgroundColor!
                    ),
                  child: GetBuilder<afficheController>(
                    builder: (controller) {
                      return ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: controller.listagc.length,
                          itemBuilder: (_, index) {
                            return Container(
                                margin:
                                    EdgeInsets.only(right: dimensions.LRpadmarg10),
                                height: dimensions.height20 * 10,
                                width: dimensions.width30 * 8,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius:
                                        BorderRadius.circular(dimensions.radius20),
                                   ),
                                child: Stack(
                                  children: [
                                    Positioned(
                                      top: 0  ,
                                      left: 0,
                                      right: 0,
                                      child: Container(
                                        height:dimensions.height10*15,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular( dimensions.radius20),
                                          image: DecorationImage(
                                            image: AssetImage(
                                        "images/${controller.listagc[index]["imageUrl"]}",
                                        
                                        ),
                                            fit: BoxFit.contain,
                                          ),
                                        ),
                                      ),
                                    ),
                                     Positioned(
                                      bottom: dimensions.height10*12,
                                        child: Padding(
                                          padding:  const EdgeInsets.all(8.0),
                                          child: Text(
                                                "Toyota",
                                                style: TextStyle(
                                                    fontSize: dimensions.font10+6 ,
                                                    fontWeight: FontWeight.bold),
                                              ),
                                        ),
                                             ),
                                                Positioned(
                                      bottom: dimensions.height10*9,
                                        child: Padding(
                                          padding:  const EdgeInsets.all(8.0),
                                          child: Text(
                                                "\$ 200",
                                                style: TextStyle(
                                                    fontSize: dimensions.font10+6,
                                                    fontWeight: FontWeight.w500),
                                                     
                                              ),
                                        ),
                                        
                                             ),
                                             Positioned(
                                              bottom:dimensions.height10*3,
                                              right: dimensions.LRpadmarg20*2,
                                              left:dimensions.LRpadmarg20*2,
                            
                                               child: Container(
                                                height: dimensions.height10*5,
                                                decoration: BoxDecoration(
                                                  color: Colors.white, 
                                                  borderRadius: BorderRadius.circular(dimensions.radius20*2),
                                                  border: Border.all(
                                                    color: Colors.blue,
                                                    width: 2
                                                  )
                            
                            
                                                ),
                                                child :  Center(child: 
                                                Text("View Promo", 
                                                style: TextStyle(
                                                  color: Colors.blue,
                                              fontSize: dimensions.font20 - 3  ,
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
                Text("Popular", style:  TextStyle(
                   fontSize: dimensions.font20 + dimensions.font10 / 2,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    wordSpacing: 1.5,
                ),),
          
          
                SizedBox(
                  height: dimensions.height20 * 23,
                  width: dimensions.width,
                  child: GetBuilder<afficheController>(
                    builder:(controller){
                      return  ListView.builder(
                        itemCount:controller.listagc.length,
                      
                        itemBuilder: (_, index) {
                          return Padding(
                            padding:  EdgeInsets.all(dimensions.TBpadmarg10),
                            child: Container(
                              
                              height: dimensions.height10*15 ,
                              width: dimensions.width,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(dimensions.radius20),
                                color: Colors.white,
                               
                                                
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    height:dimensions.height10*15 ,
                                    width:  dimensions.width10*10,
                                    decoration: BoxDecoration( 
                                                  borderRadius: BorderRadius.circular(dimensions.radius20),
                                                  image: DecorationImage(
                                                  image:AssetImage("images/${controller.listagc[index]["imageUrl"]}")  )
                                    ), 



                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [ 

                                             SizedBox(height: dimensions.height10,),
                                       Text("Honda City Hatchback"  , style : TextStyle( 
                                        overflow:  TextOverflow.ellipsis,
                                        
                                        fontWeight:  
                                        FontWeight.bold, 
                                         fontSize: dimensions.font20
                                      )
                                      , maxLines: 1,
                                      
                                      ),
                                      SizedBox(height: dimensions.height10,),

                                      Row(
                                        children: [
                                         
                                         Icon(Icons.electric_car, size:  dimensions.icon16,color: Colors.red), 
                                         //   this will be changed in the future with the data that cames from  the serveur   
      
                                         const  Text("1500 CC"),
                                         
                                         Icon(Icons.chair_alt_outlined, size:  dimensions.icon16,color: Colors.red), 
                                         //   this will be changed in the future with the data that cames from  the serveur   
                                          const Text("5 Setorange"),
                                         
                                         Icon(Icons.energy_savings_leaf, size:  dimensions.icon16,color: Colors.red), 
                                        //   this will be changed in the future with the data that cames from  the serveur   
    
                                         const  Text("Gazoline"),
                                          



                                        ],
                                      ), 
                                             SizedBox(height: dimensions.height10,),
                                      Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [ 
                                        
                                          Container(
                                                height: dimensions.height10*4,
                                                width: dimensions.width30*4,
                                                decoration: BoxDecoration(
                                                  color: Colors.white, 
                                                  borderRadius: BorderRadius.circular(dimensions.radius10*4 ),
                                                  border: Border.all(
                                                    color: Colors.blue,
                                                    width: 2
                                                  )
                            
                            
                                                ),
                                                child :  Center(child: 
                                                Text("Book A Test Drive ", 
                                                style: TextStyle(
                                                  color: Colors.blue,
                                                  fontSize: dimensions.font10,
                                                  fontWeight: FontWeight.bold)
                                                ),) 
                                               ),
                                                    SizedBox(width: dimensions.width10,) ,



                                               Container(
                                                height:dimensions.height10*4,
                                                width:dimensions.width10*8,
                                                decoration: BoxDecoration(
                                                  color: Colors.blue, 
                                                  borderRadius: BorderRadius.circular(dimensions.width10*4),
                                                  
                            
                            
                                                ),
                                                child :  Center(child: 
                                                Text("Buy Now", 
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: dimensions.font10,
                                                  fontWeight: FontWeight.bold)
                                                ),) 
                                               ),





                                        ],
                                      )

                                      
                                    ],
                                  )
                                ],
                              ),
          
          
          
          
          
                                                
                                                
                            ),
                          );
                        });
                    }
                    
                    
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
