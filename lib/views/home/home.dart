import 'package:flutter/material.dart';
import 'package:flutter_hex_color/flutter_hex_color.dart';
import 'package:health/utils/constant.dart';
import 'package:health/utils/theme.dart';
import 'package:health/views/category/view_catgory.dart';
import 'package:health/views/home/component/homeappbar.dart';
import 'package:health/views/home/component/itemlist.dart';
import 'package:health/widget/locationcard.dart';

import 'component/category.dart';
import 'component/floatingbutton.dart';


class Home extends StatelessWidget {
  TextEditingController controller = TextEditingController();
  ScrollController scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Floatingcart(),
      backgroundColor:HexColor('#E5E5E5') ,
       appBar:Homeappbar(controller,context),
      body:Column(
        children: [
          Expanded(child: Container(
            color: Colors.white,
            child: ListView(
              controller: scrollController,
              physics:const BouncingScrollPhysics(),
              children: [
                const Locationcard(),
                Padding(
                  padding: const EdgeInsets.only(left:kpadding,right:kpadding,top:16 ),
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            text('CATEGORIES'),
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
                        text('SUGGESTIONS'),
                        const SizedBox(height: kpadding,),
                        Itemlist(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ))
        ],
      ),
    );
  }
  Widget text(String s){
    return   Text(s,style: TextStyle(fontSize:16,fontWeight: FontWeight.w600,color: Colors.grey[500]  ),);
  }
}
