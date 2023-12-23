import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:job_app/controller/afficheController.dart';
import 'package:job_app/utils/costumcontainer.dart';
import 'package:job_app/utils/demonstion.dart';
import 'package:job_app/view/mainscreen/mainscreen.dart';

class affiche extends StatefulWidget {
  const affiche({super.key});

  @override
  State<affiche> createState() => _afficheState();
}

class _afficheState extends State<affiche> {

  List<Map> listagc = Get.find<afficheController>().listagc;
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
                              Get.find<afficheController>().addselectedagence(index);
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