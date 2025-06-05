import 'package:flutter/material.dart';

class CategoriesScreen extends StatelessWidget{

  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pick your category'),
      ),
      //HELPS TO RENDER GRID OF ITEMS
      body: GridView(
        padding: const EdgeInsets.all(25),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        children: List.generate(10, (index) {
          return Card(
            color: Colors.amber,
            child: Center(
              child: Text('Category $index'),
            ),
          );
        }),
      ),
    );
  }
}