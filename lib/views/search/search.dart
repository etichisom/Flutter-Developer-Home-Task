import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hex_color/flutter_hex_color.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:health/bloc/itembloc.dart';
import 'package:health/model/itemmodel.dart';
import 'package:health/utils/constant.dart';
import 'package:health/views/search/component/cartbutton.dart';
import 'package:health/views/search/component/searchappbar.dart';
import 'package:health/widget/itemcard2.dart';
import 'package:health/widget/locationcard.dart';
import 'package:provider/provider.dart';

class Search extends StatefulWidget {

  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  TextEditingController controller = TextEditingController();
  List<Item> searchitem =[];
  late Itembloc itembloc;
  @override
  Widget build(BuildContext context) {
    itembloc= Provider.of<Itembloc>(context);
    return Scaffold(
      floatingActionButton: Cartbutton(),
      backgroundColor:HexColor('#E5E5E5') ,
      appBar: searchappbar(controller, context,itembloc),
      body: Column(
        children: [
          itembloc.searchitem.isEmpty?const SizedBox():const Locationcard(),
          Expanded(
            child: Container(
              color: Colors.white,
              child: itembloc.searchitem.isEmpty?SingleChildScrollView(
                physics:const NeverScrollableScrollPhysics(),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(height: 100,),
                    Row(),
                    SvgPicture.asset("image/asset/empty.svg"),
                    //const SizedBox(height: 58,),
                    Text('No result found for “${controller.text}”',style:const TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                      color: Colors.black
                    ),)
                  ],
                ),
              ):Padding(
                padding: const EdgeInsets.all(kpadding),
                child: GridView.builder(
                    padding: EdgeInsets.zero,
                    physics:const BouncingScrollPhysics(),
                    shrinkWrap: true,
                    gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      childAspectRatio: 0.61,
                    ),
                    itemCount: itembloc.searchitem.length,
                    itemBuilder: (context,index){
                      return Itemcard2(itembloc.searchitem[index]);
                    }),
              )
            ),
          ),
        ],
      ),
    );
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller.addListener(() {
        searchitems();


    });
  }

  void searchitems() {
    itembloc.searchitems(controller.text);

  }
}
