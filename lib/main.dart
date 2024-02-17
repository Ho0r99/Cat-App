// ignore_for_file: prefer_const_constructors, unused_import

import 'package:cat_app/Data/all_cat.dart';
import 'package:cat_app/Data/cats.dart';
import 'package:cat_app/cat_details.dart';
import 'package:cat_app/cat_detailsScr.dart';
import 'package:cat_app/home_page.dart';
import 'package:flutter/material.dart';

final cats = allcat
    .map<Cat>((jsonCat) => Cat.fromJson(jsonCat))
    .toList(); //this is functional programming

void main() {
  //parse cat from json to cat object "line 14 -20  the traditional way"
  // final listOfCatsAsson = allcat;
  // final listOfCatsAsObject = <Cat>[];
  // for (var i = 0; i < listOfCatsAsson.length; i++) {
  //   final catAsJson = listOfCatsAsson[i];
  //   final catAsObject = Cat.fromJson(catAsJson);
  //   listOfCatsAsObject.add(catAsObject);
  // }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
