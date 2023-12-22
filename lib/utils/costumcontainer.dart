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
  int index ;
  costumcontainer(
      {super.key,
      required this.index,
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
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.asset("images/${widget.imageUrl}")),
    );
  }
}
