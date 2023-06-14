import 'package:flutter/material.dart';

class SunNutritionPage extends StatelessWidget {
  const SunNutritionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sunday'),
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
                value: '300g',
              ),
              NutritionCard(
                title: 'Protein',
                value: '150g',
              ),
              NutritionCard(
                title: 'Fat',
                value: '75g',
              ),
              NutritionCard(
                title: 'Calories',
                value: '2500',
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
                'Breakfast: \nPlace sliced bananas and a drizzle of honey on top of oatmeal, and serve with a cup of green tea.\nLunch: \nPlace chicken thighs in the oven to bake, cook bulgur pilaf with vegetables, and serve alongside a bowl of green salad.\nDinner: \nGrill the salmon fillet, cook 1 cup of whole wheat pasta, and serve with steamed vegetables (broccoli, carrots, zucchini).',
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
