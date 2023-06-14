import 'package:flutter/material.dart';

class ThrsNutritionPage extends StatelessWidget {
  const ThrsNutritionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Thursday'),
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
                value: '275g',
              ),
              NutritionCard(
                title: 'Protein',
                value: '120g',
              ),
              NutritionCard(
                title: 'Fat',
                value: '60g',
              ),
              NutritionCard(
                title: 'Calories',
                value: '2200',
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
                'Breakfast: \nPlace sliced cottage cheese and sliced tomatoes on a slice of whole wheat bread, top with a boiled egg, and serve with a glass of freshly squeezed grapefruit juice.\nLunch: \nGrill the turkey breast, cook 1 cup of brown rice, and serve with a bowl of vegetable lentil soup.\nDinner: \nGrill the steak and serve it with a side of vegetable bulgur pilaf and steamed vegetables (broccoli, carrots, zucchini).',
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
