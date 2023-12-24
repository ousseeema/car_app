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
                    flex: 1,
                    //!
                    //! besh tji fiha el taswira mtaa user mtaana
                    child: Container(
                      width: 50,

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

              SizedBox(
                height: 200,
                width: dimensions.width,
                child: GetBuilder<homeController>(
                  builder: (controller){
                    return  PageView.builder(
                    onPageChanged: (value){
                      controller.changeindex(value);
                    },
                      dragStartBehavior: DragStartBehavior.down,
                   
                    scrollDirection: Axis.horizontal,
                    itemCount: 4,
                    itemBuilder: (_,index){
                      return Container(
                        margin: EdgeInsets.only(right:10),
                        height: dimensions.height20*10,
                        width: dimensions.width-60,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(dimensions.radius20)
                        ),
                        child: const Center(
                          child: Text("hello there"),
                        ),
                  
                      );
                  });
              
                  },
              
                  
                ),
                
              ),

              SizedBox( height: dimensions.height10,),

              GetBuilder<homeController>(
                builder: (controller1){
                  return DotsIndicator(
                    decorator: DotsDecorator(
                      color: Colors.grey,
                      activeColor: Colors.black,
                      size: const Size.square(9.0),
                      activeSize: const Size(18.0, 9.0),
                      activeShape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0)
                      )
                    ),

                 dotsCount: 4,
                 position: controller1.PageViewSelectedIndex ,
                
                );
                },
                
              )





             
            ],
          ),
        ),
      ),
    );
  }
}
