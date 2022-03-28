import 'package:flutter/material.dart';
import 'package:health/bloc/itembloc.dart';
import 'package:health/utils/theme.dart';
import 'package:health/views/home/home.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    child: MyApp(),
    providers: [
      ChangeNotifierProvider(create: (_) => Itembloc()),
    ],
  ),

  );
}


class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: themedata,
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
