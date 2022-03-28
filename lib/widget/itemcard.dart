import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:health/model/itemmodel.dart';
import 'package:health/views/details/itemdetails.dart';

class Itemcard extends StatelessWidget {
 Item data;
 Itemcard(this.data);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context,
            MaterialPageRoute(builder:(context)=>Itemdetails(data)));
      },
      child: Card(
        elevation: 2,
        shape:RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),

          ),
          child: Column(
            children: [
             Hero(
               tag: data.productid!,
               child: Container(
                 height: 120,
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
             ),
              Padding(
                padding: const EdgeInsets.only(left: 5,right: 5,top: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(),
                    Text(data.name!,style:const TextStyle(fontWeight: FontWeight.w400,fontSize: 16,color: Colors.black),),
                    const SizedBox(height: 2,),
                    Text(data.weight!,style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14,color: Colors.grey[400]),),
                    const SizedBox(height: 9,),
                    Text("₦"+data.amount.toString(),style:const TextStyle(fontWeight: FontWeight.w600,fontSize: 18,color: Colors.black),),

                  ],
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}



class Itemcard3 extends StatelessWidget {
  Item data;
  Itemcard3(this.data);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context,
            MaterialPageRoute(builder:(context)=>Itemdetails(data)));
      },
      child: Card(
        elevation: 2,
        shape:RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),

          ),
          child: Column(
            children: [
              Container(
                height: 120,
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
                padding: const EdgeInsets.only(left: 5,right: 5,top: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(),
                    Text(data.name!,style:const TextStyle(fontWeight: FontWeight.w400,fontSize: 16,color: Colors.black),),
                    const SizedBox(height: 2,),
                    Text(data.weight!,style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14,color: Colors.grey[400]),),
                    const SizedBox(height: 9,),
                    Text("₦"+data.amount.toString(),style:const TextStyle(fontWeight: FontWeight.w600,fontSize: 18,color: Colors.black),),

                  ],
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
