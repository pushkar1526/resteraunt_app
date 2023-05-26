import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/widgets.dart';
import 'package:resteraunt_app/category_item.dart';
import '155 dummy-data.dart';

class categories_screen extends StatelessWidget {
  const categories_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView(
          children: DUMMY_CATEGORIES.map((e) => category_item(e.title, e.color)).toList(),
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              childAspectRatio: 3 / 2,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20)),
      appBar: AppBar(
        title: const Text("Welcome to my restaraunt"),
      ),
    );
  }
}
