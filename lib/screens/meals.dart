import 'package:flutter/material.dart';
import 'package:meals/models/meal.dart';

class MealsScreen extends StatelessWidget{
      const MealsScreen({
      super.key,
      required this.title,
      required this.meals,
    });


    final String title;
    final List<Meal> meals;


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title:  Text(title),
      ),
      body: ListView.builder(
        itemCount: meals.length,
        itemBuilder: (context, index) {
          final meal = meals[index];
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(meal.imageUrl),
            ),
            title: Text(meal.title),
            subtitle: Text('${meal.duration} min - ${meal.complexity.name}'),
            onTap: () {
              // Navigate to meal details screen
            },
          );
        },
      ),
    );
  }
}