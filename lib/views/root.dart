import 'package:flutter/material.dart';
import 'package:flutter_hex_color/flutter_hex_color.dart';
import 'package:health/utils/theme.dart';
import 'package:health/views/cart/cart.dart';
import 'package:health/views/home/home.dart';
import 'package:svg_icon/svg_icon.dart';

class Rootapp extends StatefulWidget {
  const Rootapp({Key? key}) : super(key: key);

  @override
  _RootappState createState() => _RootappState();
}

class _RootappState extends State<Rootapp> {
  int currentindex =0;
  List wid = [Home(),const Text(''),Cart(),const Text(''),const Text('')];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: wid[currentindex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (i){
          setState(() {
            currentindex=i;
          });
        },
        currentIndex:currentindex,
        selectedItemColor: kprimarycolor,
        unselectedItemColor: HexColor("#828282"),
        items:const [
         BottomNavigationBarItem(icon:SvgIcon('image/icons/home.svg'),label: 'Home'),
          BottomNavigationBarItem(icon:SvgIcon('image/icons/profile.svg'),label: 'Doctor'),
          BottomNavigationBarItem(icon:SvgIcon('image/icons/cart.svg'),label: 'Pharmacy'),
          BottomNavigationBarItem(icon:SvgIcon('image/icons/chat.svg'),label: 'Community'),
          BottomNavigationBarItem(icon:SvgIcon('image/icons/profile.svg'),label: 'Profile')
        ],
      ),
    );
  }
}
