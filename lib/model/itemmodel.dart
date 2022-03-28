import 'package:uuid/uuid.dart';

class Item{
   String? image,name,soldby,weight;
   double amount;
   int quantity ;
   String? productid ;

  Item({this.image, this.name, this.soldby, this.weight,
      this.amount=0,this.productid,this.quantity=1});
}


 List<Item> items =[
  Item(
    image: 'image/asset/para7.png',
    amount:100 ,
    name:'Paracetamol' ,
    soldby:"Emzor" ,
    weight:'Tablet・500mg' ,
    productid: '1'
  ), Item(
     productid: '2',
    image: 'image/asset/para2.png',
    amount:100 ,
    name:'Doliprane' ,
    soldby:"Emzor" ,
    weight:'Tablet・500mg' ,
  ), Item(
     productid: '3',
    image: 'image/asset/para8.png',
    amount:100 ,
    name:'Paracetamol' ,
    soldby:"Emzor" ,
    weight:'Tablet・500mg' ,
  ), Item(
     productid: '4',
    image: 'image/asset/para4.png',
    amount:100 ,
    name:'Ibuprofen' ,
    soldby:"Emzor" ,
    weight:'Tablet・500mg' ,
  ), Item(
     productid: '5',
    image: 'image/asset/para5.png',
    amount:100 ,
    name:'Panadol' ,
    soldby:"Emzor" ,
    weight:'Tablet・500mg' ,
  ), Item(
     productid: '6',
    image: 'image/asset/para6.png',
    amount:100 ,
    name:'Ibuprofen' ,
    soldby:"Emzor" ,
    weight:'Tablet・500mg' ,
  ),
];