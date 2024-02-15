import 'package:flutter/material.dart';
import 'package:my_cats/cats_home_screen.dart';
import 'package:my_cats/data/all_cats.dart';
import 'package:my_cats/model/cats.dart';
  final cats = allCats.map<Cat>((jsoncat) => Cat.fromJson(jsoncat)).toList();

void main(){
  //storage data in list
  runApp(const _MyApp());
}
class _MyApp extends StatefulWidget {
  const _MyApp();

  @override
  State<_MyApp> createState() => __MyAppState();
}

class __MyAppState extends State<_MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const CatHomeScreen() ,
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
    );
  }
}