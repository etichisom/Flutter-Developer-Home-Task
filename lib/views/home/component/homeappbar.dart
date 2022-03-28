
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:health/utils/asset.dart';
import 'package:health/utils/constant.dart';
import 'package:health/utils/theme.dart';
import 'package:health/views/search/search.dart';
import 'package:health/widget/searchfield.dart';
import 'package:svg_icon/svg_icon.dart';

PreferredSize Homeappbar(TextEditingController controller,BuildContext context){
  return PreferredSize(child:Container(
    decoration:const BoxDecoration(
      color: kprimarycolor,
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(20),
        bottomRight: Radius.circular(20)
      )
    ),
    child: Padding(
      padding: const EdgeInsets.only(left:kpadding,right:kpadding ),
      child: Column(
        children: [
         const SizedBox(height: 66,),
          Row(
          children: const  [
             Text('Pharmacy',style: TextStyle(fontSize: 22,fontWeight: FontWeight.w700,color: Colors.white),),
             Spacer(),
             SvgIcon(kbus),

          ],
          ),
          const SizedBox(height:ksmallspace,),
          GestureDetector(
            onTap: (){
              Navigator.push(context,
                  MaterialPageRoute(builder:(context)=>Search()));
            },
            child: Searchfield(
              controller: controller,
              enable:false,
              icon:const Icon(Icons.search,color: Colors.white,),
              title: 'Search',),
          )
        ],
      ),
    ),
  ),
      preferredSize:const Size(double.maxFinite, 150)
  );
}
