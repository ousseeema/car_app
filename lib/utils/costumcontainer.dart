// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_emoji/flutter_emoji.dart';
import 'package:job_app/utils/colors.dart';
import 'package:job_app/utils/constante.dart';
import 'package:job_app/utils/demonstion.dart';

class costumcontainer extends StatefulWidget {
  String name;
  String rating;
  String rank;
  String location;
  String imageUrl;
  String tags;
  costumcontainer(
      {super.key,
      required this.name,
      required this.rating,
      required this.location,
      required this.imageUrl,
      required this.tags,
      required this.rank});

  @override
  State<costumcontainer> createState() => _costumcontainerState();
}

class _costumcontainerState extends State<costumcontainer> {
 

  @override
  Widget build(BuildContext context) {
    return Container(
   
      height: dimensions.height10 * 7,
      width: dimensions.width10 * 31,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(dimensions.radius20)),
      child: Stack(
        children: [
          Positioned(
              top: dimensions.height10,
              left: dimensions.width10,
              right: dimensions.width10,

              //! the image of the rent company car or the logo
              child: Container(
                height: dimensions.height10 * 22,
                width: dimensions.width10 * 35,
                decoration: BoxDecoration(
                    /*image: DecorationImage(
                      image: NetworkImage(widget.imageUrl),
                      fit: BoxFit.cover
                    ),*/
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(dimensions.radius20)),
              )),
          // ! hedhy conatiiner besh nhot fiha rating and the name of the company and tags
          Positioned(
            top: dimensions.height10 * 20,
            left: dimensions.width10 * 2.5,
            child: Container(
              width: dimensions.width10 * 26,
              height: dimensions.height10 * 12,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(dimensions.radius20)),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Text(
                      widget.name,
                      style: TextStyle(
                          color: colors.bigtextcolor,
                          fontSize: dimensions.font20,
                          fontWeight: FontWeight.bold,
                          fontFamily:'PT_Serif'
                          ),
                        softWrap: true,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                
                    ),
                
                    const SizedBox(height: 2,),
                
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(Icons.tag),
                        Text( widget.tags,
                          style: TextStyle(
                              color: colors.bigtextcolor,
                              fontSize: dimensions.font10*1.5,
                              fontWeight: FontWeight.w400),
                            softWrap: true,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                        ),
                      ],
                    ),
                    const SizedBox(height: 2,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(Icons.location_on),
                        Text(
                          widget.location,
                          style: TextStyle(
                              color: colors.bigtextcolor,
                              fontSize: dimensions.font10*1.5,
                              fontWeight: FontWeight.w400),
                            softWrap: true,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                        ),
                      ],
                    ),
                    //ici
                    Row(
                      children: [
                        const SizedBox(width: 15,),
                       const Icon(Icons.bar_chart_rounded),
                       const SizedBox(width: 4,),
                        Text("rank: ${widget.rank}", style: const TextStyle(
                          fontWeight: FontWeight.bold
                        ),),
                        const SizedBox(width: 45,),
                        const Icon(Icons.radar_outlined),
                       const SizedBox(width: 4,),
                        Text("rating: ${widget.rank}", style: const TextStyle(
                          fontWeight: FontWeight.bold
                        ),),
                       
                      ],
                    )
                   

                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
