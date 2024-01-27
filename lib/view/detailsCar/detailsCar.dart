import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:job_app/controller/detailsCarController.dart';
import 'package:job_app/utils/costumcontainer.dart';
import 'package:job_app/utils/demonstion.dart';

class CarDetails extends StatefulWidget {
  const CarDetails({super.key});

  @override
  State<CarDetails> createState() => _CarDetailsState();
}

class _CarDetailsState extends State<CarDetails> {
  List<String> Costumize = [
    " hoahdzedzad",
    "aqjdhzad",
    "azdljzadazd",
    "zadazdzad",
    "ddzadzad",
    "azdazdzad",
    "azdazdzad"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<CarDetailsController>(builder: (controller) {
        return Stack(
          children: [
            Positioned(
                top: 30,
                right: 130,
                child: Container(
                  height: 160,
                  width: 180,
                  decoration: BoxDecoration(
                      image: const DecorationImage(
                          image: AssetImage("images/carvid.gif"),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(dimensions.radius10),
                          topRight: Radius.circular(dimensions.radius10))),
                )),
            Positioned(
                top: 180,
                child: Image(
                    image:
                        AssetImage("images/${controller.car!["imageUrl"]}"))),
            Positioned(
                top: 160,
                child: Container(
                  height: 400,
                  width: dimensions.width,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(dimensions.radius10),
                          topRight: Radius.circular(dimensions.radius10))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: dimensions.height10,
                      ),
                      Text(
                        controller.car!["name"],
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: dimensions.font20),
                      ),
                      SizedBox(
                        height: dimensions.height10,
                      ),
                      const Text(
                        '\$100',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                    ],
                  ),
                )),
            Positioned(
                top: 260,
                child: Container(
                  height: 400,
                  width: dimensions.width,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(dimensions.radius10),
                          topRight: Radius.circular(dimensions.radius10))),
                  child: Column(
                    children: [
                      Text(
                        "Costumize",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: dimensions.font20,
                        ),
                      ),
                      SizedBox(
                        height: dimensions.height10,
                      ),
                      SizedBox(
                        height: 200,
                        child: MasonryGridView.builder(
                            itemCount: Costumize.length,
                            gridDelegate:
                                const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                            ),
                            itemBuilder: (_, index) {
                              return Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                  color: Colors.black,
                                  width: 2,
                                ), 
                                boxShadow:   [
                                  BoxShadow(
                                  offset: Offset(0,-3 ), 
                                  color: Colors.grey,
                                  

                                  )


                                ]
                                ),
                                child:
                                    Center(child: Text(
                                        Costumize[index],
                                        style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: dimensions.font20,                                      
                                      ),
                                      
                                      )),
                              );
                            }),
                      ),
                    ],
                  ),
                ))
          ],
        );
      }),
    );
  }
}
