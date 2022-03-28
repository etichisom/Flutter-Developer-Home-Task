
import 'package:flutter/material.dart';
import 'package:flutter_hex_color/flutter_hex_color.dart';

class Locationcard extends StatelessWidget {
  const Locationcard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: HexColor('#E5E5E5'),
      child: Padding(
        padding: const EdgeInsets.only(top: 12,bottom: 12),
        child: Row(
          children:const [
            SizedBox(width: 25,),
            Icon(Icons.location_on_outlined,color: Colors.black,size: 20,),
            Text('Delivery in Lagos, NG ',
              style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),),
            Text('Lagos, NG ',
              style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600),)
          ],
        ),
      ),
    );
  }
}
