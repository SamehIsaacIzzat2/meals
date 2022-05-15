import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/dummy_data.dart';
import 'package:flutter_complete_guide/models/meal.dart';
import 'package:flutter_complete_guide/widgets/meal_item.dart';

class CategoryMealsScreen extends StatelessWidget {
  static const routeName = '/category-meals';
  String? categoryId;
  String catrgoryName = '';

  CategoryMealsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final routeArguments =
        ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>;
    categoryId = routeArguments['categoryId'];
    catrgoryName = routeArguments['categoryName'] ?? '';
    final meals = DUMMY_MEALS.where((element) {
      return element.categories.contains(categoryId);
    }).toList();
    return Scaffold(
        appBar: AppBar(
          title: Text(catrgoryName),
        ),
        body: ListView.builder(
          itemBuilder: (ctx, index) {
            return MealItem(
                id: meals[index].id,
                title: meals[index].title,
                imageUrl: meals[index].imageUrl,
                duration: meals[index].duration,
                complexity: meals[index].complexity,
                affordability: meals[index].affordability);
          },
          itemCount: meals.length,
        ));
  }
}
