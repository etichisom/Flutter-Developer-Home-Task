import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:health/model/itemmodel.dart';
import 'package:health/utils/theme.dart';

class Itemcard2 extends StatelessWidget {
  Item data;
  Itemcard2(this.data);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape:RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Container(
        height: 100,
        decoration: BoxDecoration(
          color:Colors.white,
          borderRadius: BorderRadius.circular(10.0),

        ),
        child: Column(
          children: [
            Container(
              height: 127,
              decoration:BoxDecoration(
                  borderRadius:const BorderRadius.only(
                      topRight: Radius.circular(10),
                      topLeft: Radius.circular(10)
                  ),
                  image: DecorationImage(
                      image: AssetImage(data.image!),
                      fit: BoxFit.cover
                  )
              ),),
            Padding(
              padding: const EdgeInsets.all(13.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(),
                  Text(data.name!,style:const TextStyle(fontWeight: FontWeight.w400,fontSize: 16,color: Colors.black),),
                  Text(data.weight!,style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14,color: Colors.grey[400]),),
                  const SizedBox(height: 8,),
                  Row(
                    children: [
                      Text("₦"+data.amount!.toString(),style:const TextStyle(fontWeight: FontWeight.w600,fontSize: 14,color: Colors.black),),
                      Spacer(),
                      SvgPicture.asset('image/icons/love.svg')
                    ],
                  ),
                  const SizedBox(height:10,),
                  Container(
                    width: double.maxFinite,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: kprimarycolor)
                    ),
                    child:const Center(child: Text('ADD TO CART',style: TextStyle(fontSize: 13,fontWeight: FontWeight.w700,color: kprimarycolor),)) ,
                  )
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
