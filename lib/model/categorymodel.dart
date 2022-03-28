import 'package:flutter/material.dart';

class Category{
  String? image;
  String? name;

  Category({@required this.image, @required this.name});
}

List<Category> category = [
 Category(
   image:"image/asset/head.png" ,
   name: "Headache",
 ),Category(
   image:'image/asset/supp.png' ,
   name:'Supplements' ,
 ),Category(
   image:'image/asset/infanct.png' ,
   name:'Infants' ,
 ),Category(
   image:'image/asset/cough.png' ,
   name: 'Cough',
 ),
];