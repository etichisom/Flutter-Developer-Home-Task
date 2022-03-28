import 'package:flutter/cupertino.dart';
import 'package:health/model/itemmodel.dart';

class Itembloc extends ChangeNotifier{
  List<Item> item = items;
  List<Item> cartitem = [];
  List<Item> newcartitem = [];
  List<Item> searchitem = [];

  additem(Item item){
    Item data = Item(
      productid: item.productid,
      name:item.name ,
      amount:item.amount,
      image:item.image ,
      weight:item.weight ,
      quantity:item.quantity
    );
   var exist =  cartitem.where((element) => element.image==item.image);
   if(exist.isNotEmpty){
     int index = cartitem.indexOf(exist.first);
     cartitem[index].quantity++;
   }else{
     cartitem.add(data);
   }

    notifyListeners();
  }
  removeitem(Item data){
    int index = cartitem.indexOf(data);
     cartitem.removeAt(index);
    notifyListeners();
  }

  void searchitems(String word) {
    searchitem=[];
    for(int x =0;x<items.length;x++){
      if(items[x].name!.toLowerCase().contains(word.toLowerCase().trim())){
        if(word.isNotEmpty){
          searchitem.add(items[x]);
        }
      }
    }
   notifyListeners();
  }

  clearsearch(){
    searchitem=[];
    notifyListeners();
  }
}