import 'package:flutter/material.dart';
import 'package:health/model/categorymodel.dart';
import 'package:health/utils/constant.dart';
import 'package:health/utils/theme.dart';
import 'package:health/views/category/view_catgory.dart';
import 'package:health/views/home/component/category.dart';
import 'package:health/views/home/component/itemlist.dart';
import 'package:health/widget/appbar.dart';

class Categoryitem extends StatelessWidget {
  Category data;

  Categoryitem(this.data);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar(context, 'Categories'),
      body:Padding(
        padding: const EdgeInsets.all(kpadding),
        child: ListView(
          children: [
            Row(
              children: [
                text("Categories"),
                const Spacer(),
                InkWell(
                  onTap: (){
                    Navigator.push(context,
                        MaterialPageRoute(builder:(context)=>Allcategory()));
                  },
                  child: const Text('VIEW ALL',style:
                  TextStyle(fontSize: 14,fontWeight: FontWeight.w600,color:kprimarycolor),),
                )
              ],
            ),
            const SizedBox(height: kpadding,),
            Categorylist(),
            const SizedBox(height:26,),
            text(data.name!),
            const SizedBox(height: kpadding,),
            Itemlist(),
          ],
        ),
      ) ,
    );
  }
  Widget text(String s){
    return   Text(s,style: TextStyle(fontSize:16,fontWeight: FontWeight.w600,color: Colors.grey[500]  ),);
  }
}
