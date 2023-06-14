import 'package:flutter/material.dart';

class SNutritionPage extends StatelessWidget {
  const SNutritionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Saturday'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(height: 20),
          Container(
            color: const Color(0xFF8CBF49),
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Nutritional Values',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              NutritionCard(
                title: 'Carbohydrate',
                value: '190g',
              ),
              NutritionCard(
                title: 'Protein',
                value: '110g',
              ),
              NutritionCard(
                title: 'Fat',
                value: '65g',
              ),
              NutritionCard(
                title: 'Calories',
                value: '2000',
              ),
            ],
          ),
          const SizedBox(height: 20),
          Container(
            color: const Color(0xFF8CBF49),
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Recipe',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Container(
            color: Colors.white,
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Breakfast: \nSpread avocado mash on 2 slices of whole wheat bread, top with a boiled or scrambled egg, and serve with a glass of freshly squeezed orange juice.\nLunch: \nGrill chicken breast, serve with 1 cup of brown rice and a bowl of green salad.\nDinner: \nGrill or bake the salmon, serve with roasted or boiled potatoes, and a side of steamed broccoli.',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class NutritionCard extends StatelessWidget {
  final String title;
  final String value;

  const NutritionCard({
    Key? key,
    required this.title,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(
              title,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              value,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
