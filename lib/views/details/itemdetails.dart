import 'package:currency_formatter/currency_formatter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hex_color/flutter_hex_color.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:health/bloc/itembloc.dart';
import 'package:health/model/itemmodel.dart';
import 'package:health/utils/bottomsheet.dart';
import 'package:health/utils/constant.dart';
import 'package:health/utils/ranfun.dart';
import 'package:health/utils/theme.dart';
import 'package:health/widget/appbar.dart';
import 'package:health/widget/itemcard.dart';
import 'package:provider/provider.dart';
import 'package:svg_icon/svg_icon.dart';

class Itemdetails extends StatefulWidget {
 Item data;

 Itemdetails(this.data);

  @override
  State<Itemdetails> createState() => _ItemdetailsState();
}

class _ItemdetailsState extends State<Itemdetails> {
 late Itembloc itembloc;

  @override
  Widget build(BuildContext context) {
   itembloc = Provider.of<Itembloc>(context);
    return Scaffold(
     floatingActionButton: Padding(
       padding: const EdgeInsets.only(left: 10,),
       child: SizedBox(
        width: MediaQuery.of(context).size.width-35,
        height: 50,
        child: RaisedButton(
         shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
         ),
         color: kprimarycolor,
         onPressed: (){
          itembloc.additem(widget.data);
          Sheet().showsheet(context,widget.data);
         },
         child:Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children:const [
           SvgIcon('image/icons/cartcart.svg',color: Colors.white,), SizedBox(width: 10,),
           Text('Add to cart',style: TextStyle(
               fontWeight: FontWeight.w700,
               fontSize: 15,
               color:Colors.white
           ),),
          ],
         ) ,),
       ),
     ),
     appBar: appbar(context, "Pharmacy"),
     body: SingleChildScrollView(
      physics:const BouncingScrollPhysics(),
       child: Padding(
         padding: const EdgeInsets.all(kpadding),
         child: Column(
          children: [
           Row(),
            const SizedBox(height: 10,),
            Hero(
             tag: widget.data.productid!,
                child: Image.asset(widget.data.image!)),
           const SizedBox(height: 10,),
           Text(widget.data.name!,style:const TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 20,
            color: Colors.black
           ),),
           const SizedBox(height: 1,),
           Text(widget.data.weight!,style:const TextStyle(
               fontWeight: FontWeight.w400,
               fontSize: 18,
               color: Colors.black
           ),),
           const SizedBox(height:20,),
           ListTile(
            contentPadding: EdgeInsets.zero,
             trailing: SvgPicture.asset('image/icons/love.svg'),
             leading:Image.asset('image/asset/emzor.png'),
            subtitle:Text('Emzor Pharmaceuticals',style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 14,
                color:HexColor("#13447A")
            ),) ,
            title:Text('SOLD BY',style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 10,
                color:HexColor("#8EA5BC")
            ),) ,
           ),
           const SizedBox(height:20,),
           Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
             numbutton(),
            const SizedBox(width: 10,),
             Text('Pack(s)',style: TextStyle(
                 fontWeight: FontWeight.w400,
                 fontSize: 14,
                 color:HexColor("#8EA5BC")
             ),),
            const Spacer(),
             Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
               const Text('₦',style: TextStyle(
                   fontWeight: FontWeight.w400,
                   fontSize: 12,
                   color:Colors.black
               ),),
               Text(ammount(),style:const TextStyle(
                   fontWeight: FontWeight.w700,
                   fontSize: 20,
                   color:Colors.black
               ),),
              ],
             ),
            ],
           ),
           const SizedBox(height: 30,),
           Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             Row(),
             Text('PRODUCT DETAILS',style: TextStyle(
                 fontWeight: FontWeight.w700,
                 fontSize: 17,
                 color:HexColor("#8EA5BC")
             ),),
             const SizedBox(height: 20,),
             Row(
               children: [
                 rowtile('PACK SIZE',"8 x 12 tablets (96)",'image/icons/med.svg'),
                rowtile('PRODUCT ID',"PRO23648856",'image/icons/med2.svg'),
               ],
             ),
             const SizedBox(height: 20,),
             Row(
              children: [
               rowtile('CONSTITUENTS',"Paracetamol",'image/icons/pack.svg'),
               rowtile('DISPENSED IN',"Packs",'image/icons/qr.svg'),
              ],
             ),
             const SizedBox(height: 30,),
             Text('1 pack of Emzor Paracetamol (500mg) contains 8 units of 12 tablets.',style: TextStyle(
                 fontWeight: FontWeight.w400,
                 fontSize: 15,
                 color:HexColor("#8EA5BC")
             ),),
             const SizedBox(height: 34,),
             Text('Similar Products',style: TextStyle(
                 fontWeight: FontWeight.w700,
                 fontSize: 18,
                 color:HexColor("#363636")
             ),),
             const SizedBox(height: 17,),
             Container(
              height: 222,
               width: double.maxFinite,
               child: ListView.builder(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                  itemCount:items.length ,
                   itemBuilder:(context,index){
                   return Container(
                    width: 150,
                       child: Itemcard3(items[index]));
                   } ),
             )
            ],
           ),
          const SizedBox(height: 20,),

          ],
         ),
       ),
     ),
    );
  }

 Widget numbutton() {
   return Container(
    width: 100,
    height:40 ,
    decoration: BoxDecoration(
     borderRadius: BorderRadius.circular(10),
     border: Border.all(color:Colors.grey)
    ),
    child: Row(
     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
     children:  [
       InkWell(
        onTap: (){
         if(widget.data.quantity!=1){
          print('sub');
          setState(() {
           widget.data.quantity--;
          });
         }
        },
           child:const Padding(
             padding:  EdgeInsets.only(left:5,right: 5),
             child: Text('-',style: TextStyle(fontSize: 30,fontWeight: FontWeight.w700),),
           )),
      Text(widget.data.quantity.toString()),
      InkWell(
          onTap: (){
            setState(() {
             widget.data.quantity++;
            });
          },
          child:const Padding(
            padding:  EdgeInsets.all(4.0),
            child:  Text('+',style: TextStyle(fontSize: 30,fontWeight: FontWeight.w700),),
          ))
     ],
    ),
   );
 }

 Widget rowtile(String s, String t, String u) {
   return Expanded(
       child: Container(child: Row(
        children: [
         SvgPicture.asset(u),
        const SizedBox(width: 10,),
         Column(
          crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             Text(s,style: TextStyle(
                 fontWeight: FontWeight.w400,
                 fontSize: 10,
                 color:HexColor("#8EA5BC")
             ),),
            Text(t,style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 14,
                color:HexColor("#13447A")
            ),),
           ],
         ),
        ],
       )));
 }

  String ammount() {
   double amount = widget.data.quantity*widget.data.amount;
   return Ranfun().money(amount);

  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      widget.data.quantity=1;
    });
  }
}
