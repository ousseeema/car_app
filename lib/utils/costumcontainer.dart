// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:job_app/utils/colors.dart';
import 'package:job_app/utils/demonstion.dart';

class costumcontainer extends StatefulWidget {
  String name ; 
  String rating;
  String rank;
  String location;
  String imageUrl;
  String tags;
   costumcontainer({super.key,required this.name,required this.rating,required this.location,required this.imageUrl,required this.tags, required this.rank});

  @override
  State<costumcontainer> createState() => _costumcontainerState();
}

class _costumcontainerState extends State<costumcontainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: dimensions.height10*10,
      width:  dimensions.width10*10,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(dimensions.radius20)

        ),

        child: Stack(
            /*children: [
              Positioned(
                //! the image of the rent company car or the logo
                child: Container(
                  height:dimensions.height10*11 ,
                  width: dimensions.width10*20,
                  decoration: BoxDecoration(
                    /*image: DecorationImage(
                      image: NetworkImage(widget.imageUrl),
                      fit: BoxFit.cover
                    ),*/
                    borderRadius: BorderRadius.circular(dimensions.radius20)

                  ),
                )),
                // ! hedhy conatiiner besh nhot fiha rating and the name of the company and tags 
              Positioned( 
                child: Container(
                  decoration: BoxDecoration(
                    color: colors.secondsColor,
                    borderRadius: BorderRadius.circular(dimensions.radius20)
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Text(widget.name)),
                             Expanded(
                            flex: 2,
                            child: Text(widget.tags)),
                        ],

                       

                      ),
                       Row(
                        children: [
                         
                        ],
                       )

                    ],
                  ),

                ),

              )



            ],*/
        ),

        

    );
  }
}