
import 'package:flutter/material.dart';
import 'package:health/model/itemmodel.dart';
import 'package:health/utils/theme.dart';
import 'package:health/views/cart/cart.dart';
import 'package:health/views/home/home.dart';

class Sheet{

  showsheet(BuildContext context,Item item){
    showModalBottomSheet(context: context,
        shape:const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            )
        ),
        builder: (context){
          return Sheetdetails(item);
        });
  }
}

class Sheetdetails extends StatefulWidget {

Item item;

Sheetdetails(this.item);

@override
  State<Sheetdetails> createState() => _SheetdetailsState();
}

class _SheetdetailsState extends State<Sheetdetails> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        )
      ),
      height: 300,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const SizedBox(height: 44,),
            Text('${widget.item.name} has been successfully added to cart!'
              ,style: const TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 20,
                color:Colors.black
            ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 34,),
            SizedBox(
              width: double.maxFinite,
              height: 50,
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                color: kprimarycolor,
                onPressed: (){
                  Navigator.pop(context);
                  Navigator.push(context,
                      MaterialPageRoute(builder:(context)=>Cart()));
                },
                child:const Text('VIEW CART',style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 15,
                    color:Colors.white
                ),) ,),
            ),
            const SizedBox(height: 19,),
            InkWell(
              onTap: (){
               Navigator.pop(context);
              },
              child: Container(
                width: double.maxFinite,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: kprimarycolor)
                ),
                child:const Center(
                  child: Text('CONTINUE SHOPPING',style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 15,
                      color:kprimarycolor
                  ),),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
