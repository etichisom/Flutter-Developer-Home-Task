import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hex_color/flutter_hex_color.dart';

class Searchfield extends StatelessWidget {
  String?  title;
  Widget? icon;
  bool? enable;
  TextEditingController? controller;
  Searchfield({this.title, this.icon, this.controller,this.enable=true});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 36,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.4),
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
        controller: controller,
        style: const TextStyle(color: Colors.white),
        enabled: enable,
        decoration: InputDecoration(
          hintText: title,
          hintStyle:const TextStyle(color: Colors.white),
          border: InputBorder.none,
          prefixIcon:icon,
          filled: true,
        ),
      ),
    );
  }
}
