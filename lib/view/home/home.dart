import 'package:flutter/material.dart';
import 'package:job_app/utils/colors.dart';
import 'package:job_app/utils/constante.dart';
import 'package:job_app/utils/demonstion.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
     return  Scaffold(
      backgroundColor: colors.backgroundColor!,  
      body:  SafeArea(
        child: Padding(
          padding: EdgeInsets.all(dimensions.LRpadmarg20),
          child: Column(
            children: [
              Row(
                children: [
                 const Expanded(
                  flex: 4,
                  child: Text("Hi there ")) ,
                 Expanded(
                  //!
                  //! besh tji fiha el taswira mtaa user mtaana 
                  child: Container(
                    height: dimensions.height20 *2.5,
                    
                    decoration:  BoxDecoration(
                      color: colors.buttontextcolor,
                      borderRadius: BorderRadius.circular(dimensions.radius20)
                    ),
                  ),
                  )
          
              ],),

              SizedBox(height: dimensions.height20,),

             ListView.builder(
              itemCount: 5,
              itemBuilder:(_ , index){
                return costumContainer()
              }
               )
          
          
          
          
            ],
          ),
        ),
      ),
    );
  }
  }
