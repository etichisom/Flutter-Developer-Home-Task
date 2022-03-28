import 'package:flutter/material.dart';
import 'package:health/model/categorymodel.dart';
import 'package:health/widget/appbar.dart';
import 'package:health/widget/categorycard.dart';

class Allcategory extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar(context,'Categories'),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: GridView.count(
            crossAxisCount: 2,
            //crossAxisSpacing: 10,
            childAspectRatio: 3/2,
            children:category.map((e){
              return Padding(
                padding: const EdgeInsets.only(bottom:20 ),
                child: Categorycard(e),
              );
            }).toList(),
        ),
      ),
    );
  }
}

