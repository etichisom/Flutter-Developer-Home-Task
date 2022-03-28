import 'package:uuid/uuid.dart';

class Item{
   String? image,name,soldby,weight;
   double? amount;
   int? quantity;
   String productid = const Uuid().v1();

  Item({this.image, this.name, this.soldby, this.weight,
      this.amount,this.quantity});
}


 List<Item> items =[
  Item(
    image: 'image/asset/para7.png',
    amount:100 ,
    name:'Paracetamol' ,
    soldby:"Emzor" ,
    quantity:1 ,
    weight:'Tablet・500mg' ,
  ), Item(
    image: 'image/asset/para2.png',
    amount:100 ,
    name:'Doliprane' ,
    soldby:"Emzor" ,
    quantity:1 ,
    weight:'Tablet・500mg' ,
  ), Item(
    image: 'image/asset/para8.png',
    amount:100 ,
    name:'Paracetamol' ,
    soldby:"Emzor" ,
    quantity:1 ,
    weight:'Tablet・500mg' ,
  ), Item(
    image: 'image/asset/para4.png',
    amount:100 ,
    name:'Ibuprofen' ,
    soldby:"Emzor" ,
    quantity:1 ,
    weight:'Tablet・500mg' ,
  ), Item(
    image: 'image/asset/para5.png',
    amount:100 ,
    name:'Panadol' ,
    soldby:"Emzor" ,
    quantity:1 ,
    weight:'Tablet・500mg' ,
  ), Item(
    image: 'image/asset/para6.png',
    amount:100 ,
    name:'Ibuprofen' ,
    soldby:"Emzor" ,
    quantity:1 ,
    weight:'Tablet・500mg' ,
  ),
];