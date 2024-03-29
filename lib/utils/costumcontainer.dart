// ignore_for_file: camel_case_types, must_be_immutable

import 'package:flutter/material.dart';


class costumcontainer extends StatefulWidget {
  String name;
  String imageUrl;
  int index ;
  costumcontainer(
      {super.key,
      required this.index,
      required this.name,
    
      required this.imageUrl,
 });

  @override
  State<costumcontainer> createState() => _costumcontainerState();
}

class _costumcontainerState extends State<costumcontainer> {
 

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.asset("images/${widget.imageUrl}")),
    );
  }
}
