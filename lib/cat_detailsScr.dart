// ignore_for_file: prefer_const_constructors, unused_import, prefer_const_literals_to_create_immutables

import 'package:cat_app/Data/cats.dart';
import 'package:cat_app/cat_details.dart';
import 'package:cat_app/main.dart';
import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';

class CatDetailsScr extends StatelessWidget {
  final Cat cat;

  const CatDetailsScr({super.key, required this.cat});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade600,
        title: Text(
          cat.name,
          style: TextStyle(fontFamily: 'AbrilFatface', fontSize: 25),
        ),
        actions: [
          // IconButton(
          //   onPressed: () {},
          //   icon: Icon(
          //     Icons.favorite,
          //     color: Colors.white,
          //   ),
          // ),
          LikeButton(
            padding: EdgeInsets.only(right: 8),
          )
        ],
      ),
      body: catDetailsWidget(
        cat: cat,
      ),
    );
  }
}
