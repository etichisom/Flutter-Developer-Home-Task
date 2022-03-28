import 'package:flutter/cupertino.dart';
import 'package:health/model/itemmodel.dart';

class Itembloc extends ChangeNotifier{
  List<Item> item = items;
  List<Item> cartitem = [];
  List<Item> searchitem = [];

  additem(Item item){
    cartitem.add(item);
    notifyListeners();
  }
  removeitem(int index){
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