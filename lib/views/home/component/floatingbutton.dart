import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hex_color/flutter_hex_color.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:health/bloc/itembloc.dart';
import 'package:health/utils/asset.dart';
import 'package:provider/provider.dart';
import 'package:svg_icon/svg_icon.dart';

class Floatingcart extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    final itembloc = Provider.of<Itembloc>(context);
    return Card(
      elevation: 10,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50),
      ),
      child: Container(
        child: Padding(
          padding: const EdgeInsets.all(1.5),
          child: Container(
            width: 155,
            height: 48,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(50),
              gradient: LinearGradient(colors: [
                HexColor('#FE806F'),
                HexColor('#E5366A'),
              ])
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:  [
                  const Text('Checkout',style: TextStyle(fontSize: 14,color: Colors.white,fontWeight: FontWeight.w700),),
                  const SizedBox(width: 9,),
                  const SvgIcon(kcart),
                  const SizedBox(width: 9,),
                   Container(
                     decoration: BoxDecoration(
                       color: HexColor('#F2C94C'),
                       shape: BoxShape.circle
                     ),
                     child:Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: Text(itembloc.cartitem.length.toString(),
                         style:const TextStyle(fontSize: 12,color: Colors.black,fontWeight: FontWeight.w700),
                       ),
                     ) ,
                   )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
