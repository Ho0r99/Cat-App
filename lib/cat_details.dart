// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, camel_case_types

import 'package:cat_app/Data/cats.dart';
import 'package:flutter/material.dart';

class catDetailsWidget extends StatelessWidget {
  final Cat cat;
  const catDetailsWidget({
    super.key,
    required this.cat,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //cat image
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Container(
            // color: Colors.black12,
            decoration: BoxDecoration(
              border: Border.all(width: 8, color: Colors.grey.shade300),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Image.network(cat.imageLink),
          ),
        ),
        SizedBox(
          child: Divider(
            height: 10,
            color: Colors.black54,
          ),
        ),
        //cat name
        Text(
          cat.name,
          style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              fontFamily: 'AbrilFatface'),
        ),
        //cat info
        Text(
          'Oeigin: ${cat.origin}',
          style: TextStyle(fontFamily: 'ZillaSlab', fontSize: 20),
        ),
        Text('Max Weight: ${cat.maxWeight} ',
            style: TextStyle(fontFamily: 'ZillaSlab', fontSize: 20)),
        Text('Min weight: ${cat.minWeight} ',
            style: TextStyle(fontFamily: 'ZillaSlab', fontSize: 20)),
        Text(
          'Length:${cat.length}',
          style: TextStyle(fontFamily: 'ZillaSlab', fontSize: 20),
        ),
      ],
    );
  }
}
