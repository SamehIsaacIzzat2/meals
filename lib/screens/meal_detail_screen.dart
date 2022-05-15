import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MealDetailScreen extends StatelessWidget {
  static const routeName = '/meal-detail';

  const MealDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final routeArguments =
        ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>;
    final id = routeArguments['id'];
    return Scaffold(
      appBar: AppBar(
        title: Text('Meal'),
        actions: [],
      ),
      body: Container(
        child: Text(id),
      ),
    );
  }
}
