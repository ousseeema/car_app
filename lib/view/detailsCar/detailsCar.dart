import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:job_app/controller/detailsCarController.dart';
import 'package:job_app/utils/demonstion.dart';

class CarDetails extends StatefulWidget {
  const CarDetails({super.key});

  @override
  State<CarDetails> createState() => _CarDetailsState();
}

class _CarDetailsState extends State<CarDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<CarDetailsController >(
        builder: (controller){
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
                  fit: BoxFit.cover
                  ),
               
                borderRadius: BorderRadius.only(topLeft: Radius.circular(dimensions.radius10), topRight: Radius.circular(dimensions.radius10))
              ),
              
              )),
            Positioned(
              top: 160,
              child: Container(
                height: 400,
                width: dimensions.width,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(dimensions.radius10), topRight: Radius.circular(dimensions.radius10))
              ),
              child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [ 
                                         SizedBox(height: dimensions.height10,),
                                      Text(, 
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold, 
                                        fontSize: dimensions.font20
                                      ),),
                                        SizedBox(height: dimensions.height10,),
                                      const Text('\$100', 
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold, 
                                        fontSize: 16
                                      ),),
                                      ],
                                     ),
        
              )),
              Positioned(
                top:260,
                child: Container( 
                  height: 400,
                width: dimensions.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(dimensions.radius10), topRight: Radius.circular(dimensions.radius10))
              ),
                
              ))
          ],
        );
        }
       
      )
      ,

    );
  }
}