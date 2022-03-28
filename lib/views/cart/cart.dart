import 'package:flutter/material.dart';
import 'package:flutter_hex_color/flutter_hex_color.dart';
import 'package:flutter_scrolling_fab_animated/flutter_scrolling_fab_animated.dart';
import 'package:health/bloc/itembloc.dart';
import 'package:health/model/itemmodel.dart';
import 'package:health/utils/constant.dart';
import 'package:health/utils/ranfun.dart';
import 'package:health/utils/theme.dart';
import 'package:menu_button/menu_button.dart';
import 'package:provider/provider.dart';

import 'component/cartappbar.dart';

class Cart extends StatefulWidget {
  
bool? canpop;

Cart({this.canpop=true});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
late Itembloc itembloc ;

  @override
  Widget build(BuildContext context) {
    itembloc = Provider.of<Itembloc>(context);
    return Scaffold(
      floatingActionButton:Container(
        width: MediaQuery.of(context).size.width-40,
        child: Row(
          children: [
            Expanded(
              child: Container(
                child:Row(
                  children: [
                   const Text('Total: ',style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 18,
                   ),),
                     Text(total(),style:const TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),),
                  ],
                ) ,
              ),
            ),
           const SizedBox(width: 20,),
           Expanded(
             child: Card(
               shape: RoundedRectangleBorder(
                 borderRadius: BorderRadius.circular(15)
               ),
               child: Container(
                 height:50 ,
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(15),
                   gradient: LinearGradient(
                     colors: [
                       HexColor('#7A08FA'),
                       HexColor('#AD3BFC')
                     ]
                   )
                 ),
                 child: const Center(
                   child: Text('CHECKOUT',style: TextStyle(
                       fontWeight: FontWeight.w700,
                       fontSize: 15,
                       color:Colors.white
                   ),),
                 ),
               ),
             ),
           )
          ],
        ),
      ) ,
      appBar: cartappbar(context, 'Cart',canpop: widget.canpop!),
      body: Padding(
        padding: const EdgeInsets.all(kpadding),
        child: ListView.builder(
          itemCount: itembloc.cartitem.length,
            itemBuilder:(context,index) {
            var data = itembloc.cartitem[index];
            return cartitem(data);
            }
        ),
      ),
    );
  }

  Widget cartitem(Item data) {
    return Column(
      children: [
        const SizedBox(height: 14,),
        Row(
          children: [
            SizedBox(
              height: 80,
                width: 80,
                child: Image.asset(data.image!,fit: BoxFit.cover,),),
           const SizedBox(width: 14,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(data.name!,style:const TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color:Colors.black
                ),),
                const SizedBox(height: 5,),
                Text(data.weight!,style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color:HexColor('#BDBDBD')
                ),),
                const SizedBox(height: 7,),
                Text(Ranfun().money(data.amount),style:const TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color:Colors.black
                ),),
              ],
            ),
           const Spacer(),
            Column(
              children: [
                MenuButton<int>(
                  child:Container(
                    width:58 ,
                      height: 31,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey,width: 0.5),
                        borderRadius: BorderRadius.circular(5)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                           Text(data.quantity.toString()),
                          const  Icon(Icons.keyboard_arrow_down_rounded,color: Colors.black,
                          size: 16,)
                        ],
                      )),
                  items:const [1,2,3,4,5],
                  itemBuilder: (int value) => Container(
                    height: 40,
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 16),
                    child: Text(value.toString()),
                  ),
                  onItemSelected: (int value) {
                    setState(() {
                      data.quantity=value;
                    });
                  },
                ),
                const SizedBox(height: 12,),
               GestureDetector(
                 onTap: (){
                   itembloc.removeitem(data);
                 },
                 child: Row(
                   children:const [
                     Icon(Icons.delete,color: kprimarycolor,size: 20,),
                     SizedBox(width: 1,),
                      Text('Remove',style:TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: 12,
                          color:kprimarycolor
                      ),),
                   ],
                 ),
               ),
              ],
            )
          ],
        ),
        const SizedBox(height: 14,),
       const  Divider(),
      ],
    );
  }

  String total() {
    double total =0;
    for(int x =0 ;x<itembloc.cartitem.length;x++){
      total=(itembloc.cartitem[x].amount*itembloc.cartitem[x].quantity)+total;
    }
    print(total);
    return "₦"+Ranfun().money(total);
  }
}
