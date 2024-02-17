// ignore_for_file: unused_import, prefer_const_constructors

import 'package:cat_app/Data/cats.dart';
import 'package:cat_app/cat_details.dart';
import 'package:cat_app/cat_detailsScr.dart';
import 'package:flutter/material.dart';

class CatCard extends StatelessWidget {
  final Cat cat;
  const CatCard({
    super.key,
    required this.cat,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return CatDetailsScr(cat: cat);
        }));
      },
      child: Card(
        child: Column(
          children: [
            // cate image
            Expanded(
              child: Image.network(
                width: double.infinity,
                fit: BoxFit.fitWidth,
                cat.imageLink,
              ),
            ),

            //cat Name
            Text(
              cat.name,
              style: TextStyle(
                fontFamily: 'AbrilFatface',
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
