import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:health/model/itemmodel.dart';
import 'package:health/widget/itemcard.dart';

class Itemlist extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.zero,
      physics:const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        childAspectRatio: 0.75,
       ),
        itemCount: items.length,
        itemBuilder: (context,index){
          return Itemcard(items[index]);
        });
  }
}
