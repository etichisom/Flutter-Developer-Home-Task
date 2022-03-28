
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:health/bloc/itembloc.dart';
import 'package:health/utils/asset.dart';
import 'package:health/utils/constant.dart';
import 'package:health/utils/theme.dart';
import 'package:health/views/search/search.dart';
import 'package:health/widget/searchfield.dart';
import 'package:svg_icon/svg_icon.dart';

PreferredSize searchappbar(TextEditingController controller,BuildContext context,Itembloc itembloc){
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
              const Text('Pharmacy',style: TextStyle(fontSize: 22,fontWeight: FontWeight.w700,color: Colors.white),),
              const Spacer(),
              const  SvgIcon(kbus),

            ],
          ),
          const SizedBox(height:ksmallspace,),
          Row(
            children: [
              Expanded(
                child: Container(
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(context,
                          MaterialPageRoute(builder:(context)=>Search()));
                    },
                    child: Searchfield(
                      controller: controller,
                      icon:const Icon(Icons.search,color: Colors.white,),
                      title: 'Search',),
                  ),
                ),
              ),
              const SizedBox(width: 10,),
            itembloc.searchitem.isEmpty?const SizedBox():InkWell(
              onTap: (){
                itembloc.clearsearch();
              },
                child: const Text('Cancel',style: TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.w600),))
            ],
          )
        ],
      ),
    ),
  ),
      preferredSize:const Size(double.maxFinite, 150)
  );
}
