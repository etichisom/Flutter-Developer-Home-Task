import 'package:flutter/material.dart';
import 'package:health/model/categorymodel.dart';
import 'package:health/widget/categorycard.dart';

class Categorylist extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 98,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: category.length,
        itemBuilder: (context,index){
          return Categorycard(category[index]);
        },
      ),
    );
  }
}
