
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:health/utils/asset.dart';
import 'package:health/utils/constant.dart';
import 'package:health/utils/theme.dart';
import 'package:health/views/search/search.dart';
import 'package:health/widget/searchfield.dart';
import 'package:svg_icon/svg_icon.dart';

PreferredSize appbar(BuildContext context,String title){
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
            children:   [
              GestureDetector(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child:const Icon(Icons.arrow_back_ios_rounded,color: Colors.white,size: 20,)),
              const SizedBox(width: 17,),
               Text(title,style:const TextStyle(fontSize: 22,fontWeight: FontWeight.w700,color: Colors.white),),
              const Spacer(),
                SvgPicture.asset(kcartbus),

            ],
          ),
          const SizedBox(height:ksmallspace,),
        ],
      ),
    ),
  ),
      preferredSize:const Size(double.maxFinite, 110)
  );
}
