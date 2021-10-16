import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'category_item.dart';
import 'dummy_data.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DeliMeal'),
        actions: [],
      ),
      body: GridView(
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20),
        children: [
          ...DUMMY_CATEGORIES.map((cat) {
            return CategoryItem(
              title: cat.title,
              color: cat.color,
            );
          }).toList()
        ],
      ),
    );
  }
}