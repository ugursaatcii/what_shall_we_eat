import 'package:flutter/material.dart';

class WNutritionPage extends StatelessWidget {
  const WNutritionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wednesday'),
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
                value: '230g',
              ),
              NutritionCard(
                title: 'Protein',
                value: '140g',
              ),
              NutritionCard(
                title: 'Fat',
                value: '70g',
              ),
              NutritionCard(
                title: 'Calories',
                value: '2300',
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
                'Breakfast: \nMake a cheesy omelette using 3 eggs, grated white cheese, and diced vegetables, serve it with a slice of whole wheat bread, and accompany it with a cup of green tea.\nLunch: \nPlace oven-baked chicken thighs alongside a serving of vegetable bulgur pilaf, a bowl of green salad (lettuce, tomatoes, cucumbers, etc.) dressed with lemon and olive oil, and enjoy!\nDinner: \nGrill sea bass and serve with 1 cup of whole wheat pasta, steamed vegetables (broccoli, carrot, zucchini).',
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
