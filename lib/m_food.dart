import 'package:flutter/material.dart';

class MNutritionPage extends StatelessWidget {
  const MNutritionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Monday'),
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
                value: '150g',
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
                'Breakfast:\nCook the oatmeal with your choice of milk or water. Then, top it with sliced banana and drizzle some honey over it. Serve with a cup of green tea.\nLaunch: \nGrill the chicken breast. Cook the whole wheat pasta and serve it alongside. Prepare the green salad with lettuce, tomatoes, cucumbers, or any other preferred vegetables. Dress it with lemon and olive oil\nDinner: \nGrill the salmon. Prepare the bulgur pilaf with vegetables. Serve it with steamed broccoli, carrots, and zucchini.',
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
