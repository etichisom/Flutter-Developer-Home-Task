
import 'package:flutter/material.dart';
import 'package:health/model/categorymodel.dart';
import 'package:health/views/category/categoryitems.dart';

class Categorycard extends StatelessWidget {
  Category data;

  Categorycard(this.data);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context,
            MaterialPageRoute(builder:(context)=>Categoryitem(data)));
      },
      child: Container(
        height: 98.55,
        width: 125,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
                image: AssetImage(data.image!),
                fit: BoxFit.cover
            )
        ),
        child: Center(child: Text(data.name!,style:const TextStyle(color: Colors.white,fontSize: 14.46,fontWeight: FontWeight.w700) ,)),
      ),
    );
  }
}

