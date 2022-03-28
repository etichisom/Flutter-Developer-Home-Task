import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hex_color/flutter_hex_color.dart';
import 'package:health/bloc/itembloc.dart';
import 'package:health/utils/asset.dart';
import 'package:health/views/cart/cart.dart';
import 'package:provider/provider.dart';
import 'package:svg_icon/svg_icon.dart';

class Cartbutton extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    final itembloc = Provider.of<Itembloc>(context);
    return InkWell(
      onTap: (){
        Navigator.push(context,
            MaterialPageRoute(builder:(context)=>Cart()));
      },
      child: Container(
        decoration: const BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: Colors.black,
              blurRadius: 0.1,
              spreadRadius: 0.2
            )
          ]
        ),
        child: Padding(
          padding: const EdgeInsets.all(2.0),
          child: Stack(
            children: [
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    shape: BoxShape.circle,
                    gradient: LinearGradient(colors: [
                      HexColor('#FE806F'),
                      HexColor('#E5366A'),
                    ])
                ),
                child:const Center(child: SvgIcon(kcart),),
              ),
              Positioned(
                top:-3,
                right: 0,
                child: Container(
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
