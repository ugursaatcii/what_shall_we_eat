import 'package:flutter/material.dart';
import 'package:ne_yiyelim/m_food.dart';
import 'package:ne_yiyelim/f_food.dart';
import 'package:ne_yiyelim/s_food.dart';
import 'package:ne_yiyelim/sun_food.dart';
import 'package:ne_yiyelim/t_food.dart';
import 'package:ne_yiyelim/thrs_food.dart';
import 'package:ne_yiyelim/w_food.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Nutrition Program',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.deepPurple,
        ).copyWith(secondary: Colors.lightBlueAccent),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Nutrition Program'),
      ),
      backgroundColor: Colors.black,
      body: ListView(
        children: [
          DayCard(
            day: 'Monday',
            dayColor: const Color(0xFF8CBF49),
            breakfast:
                'Breakfast:\nOatmeal topped with sliced bananas and a drizzle of honey\n1 cup of green tea',
            breakfastSnack: 'Breakfast Snack:\n1 apple\n10 almonds',
            lunch:
                'Lunch:\nGrilled chicken breast\n1 cup of whole wheat pasta\n1 bowl of green salad (lettuce, tomatoes, cucumbers, etc.) with lemon and olive oil dressing',
            lunchSnack:
                'Lunch Snack:\n1 bowl of yogurt\n1 tablespoon of flaxseeds\n1 handful of mixed dried fruits',
            dinner:
                'Dinner:\nGrilled salmon\n1 cup of bulgur pilaf (with vegetables)\nSteamed vegetables (broccoli, carrots, zucchini)',
            icon: Icons.restaurant_menu,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const MNutritionPage(),
                ),
              );
            },
          ),
          DayCard(
            day: 'Tuesday',
            dayColor: const Color(0xFF8CBF49),
            breakfast:
                'Breakfast:\n2 slices of whole wheat bread topped with avocado and grated white cheese\n1 boiled egg\n1 cup of freshly squeezed orange juice',
            breakfastSnack: 'Breakfast Snack:\n1 banana\n1 handful of walnuts',
            lunch:
                'Lunch:\nGrilled chicken breast salad (lettuce, tomatoes, cucumbers, peppers, chicken breast)\n1 slice of whole wheat bread\nLemon and olive oil dressing',
            lunchSnack:
                'Lunch Snack:\n1 bowl of fruit yogurt (with fruit slices)\n1 tablespoon of chia seeds',
            dinner:
                'Dinner:\nGrilled turkey breast\n1 cup of brown rice\nBaked vegetables (potatoes, carrots, zucchini)',
            icon: Icons.restaurant_menu,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const TNutritionPage(),
                ),
              );
            },
          ),
          DayCard(
            day: 'Wednesday',
            dayColor: const Color(0xFF8CBF49),
            breakfast:
                'Breakfast:\nOmelette (2 eggs, spinach, mushrooms, grated light cheese)\n2 slices of whole wheat bread\n1 cup of green tea',
            breakfastSnack: 'Breakfast Snack:\n1 pear\n1 handful of almonds',
            lunch:
                'Lunch:\nLentil soup\n2 slices of whole wheat bread\n1 serving of yogurt',
            lunchSnack: 'Lunch Snack:\n1 apple\n10 raw almonds',
            dinner:
                'Dinner:\nChicken stir-fry (chicken breast, vegetables, soy sauce)\n1 cup of bulgur pilaf\n1 bowl of cacık',
            icon: Icons.restaurant_menu,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const WNutritionPage(),
                ),
              );
            },
          ),
          DayCard(
            day: 'Thursday',
            dayColor: const Color(0xFF8CBF49),
            breakfast:
                'Breakfast:\n1 bowl of oatmeal topped with sliced bananas and a drizzle of honey\n1 cup of freshly squeezed orange juice',
            breakfastSnack:
                'Breakfast Snack:\n1 grapefruit\n1 handful of walnuts',
            lunch:
                'Lunch:\nTuna salad (lettuce, tomatoes, cucumbers, corn, tuna)\n1 slice of whole wheat bread\nLemon and olive oil dressing',
            lunchSnack:
                'Lunch Snack:\n1 serving of fruit yogurt\n1 tablespoon of chia seeds',
            dinner:
                'Dinner:\nBaked sea bass\n1 cup of brown rice\nBaked vegetables (potatoes, carrots, zucchini)',
            icon: Icons.restaurant_menu,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ThrsNutritionPage(),
                ),
              );
            },
          ),
          DayCard(
            day: 'Friday',
            dayColor: const Color(0xFF8CBF49),
            breakfast:
                'Breakfast:\nScrambled eggs with spinach and feta cheese\n1 slice of whole grain toast\n1 cup of green tea',
            breakfastSnack:
                'Breakfast Snack:\n1 medium apple\n1 slice of low-fat cheese',
            lunch:
                'Lunch:\nGrilled salmon\nQuinoa salad (cucumber, tomatoes, red onions, parsley)\nLemon vinaigrette dressing',
            lunchSnack:
                'Lunch Snack:\n1 small handful of almonds\n1 cup of herbal tea',
            dinner:
                'Dinner:\nTurkey meatballs\nWhole wheat spaghetti\nMarinara sauce\nSide salad',
            icon: Icons.restaurant_menu,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const FNutritionPage(),
                ),
              );
            },
          ),
          DayCard(
            day: 'Saturday',
            dayColor: const Color(0xFF8CBF49),
            breakfast:
                'Breakfast:\nPancakes with maple syrup\n2 slices of bacon\n1 cup of orange juice',
            breakfastSnack:
                'Breakfast Snack:\n1 small banana\n1 tablespoon of peanut butter',
            lunch:
                'Lunch:\nGrilled chicken Caesar salad\nCroutons\nParmesan cheese\nCaesar dressing',
            lunchSnack:
                'Lunch Snack:\n1 cup of mixed fruits\n1 small handful of cashews',
            dinner:
                'Dinner:\nBeef stir-fry\nBrown rice\nStir-fried vegetables (bell peppers, broccoli, carrots, snap peas)',
            icon: Icons.restaurant_menu,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SNutritionPage(),
                ),
              );
            },
          ),
          DayCard(
            day: 'Sunday',
            dayColor: const Color(0xFF8CBF49),
            breakfast:
                'Breakfast:\nAvocado toast\n1 poached egg\n1 cup of black coffee',
            breakfastSnack:
                'Breakfast Snack:\n1 small orange\n1 hard-boiled egg',
            lunch:
                'Lunch:\nChicken and vegetable skewers\nQuinoa salad with dried cranberries and pecans\nBalsamic vinaigrette dressing',
            lunchSnack:
                'Lunch Snack:\n1 small handful of grapes\n1 string cheese',
            dinner:
                'Dinner:\nGrilled steak\nMashed potatoes\nGrilled asparagus',
            icon: Icons.restaurant_menu,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SunNutritionPage(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

class DayCard extends StatelessWidget {
  final String day;
  final Color dayColor;
  final String breakfast;
  final String breakfastSnack;
  final String lunch;
  final String lunchSnack;
  final String dinner;
  final IconData icon;
  final VoidCallback onPressed;

  const DayCard({
    Key? key,
    required this.day,
    required this.dayColor,
    required this.breakfast,
    required this.breakfastSnack,
    required this.lunch,
    required this.lunchSnack,
    required this.dinner,
    required this.icon,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: dayColor,
              padding: const EdgeInsets.all(8.0),
              child: Text(
                day,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                Icon(
                  icon,
                  color: Colors.black,
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: Text(
                    breakfast,
                    style: const TextStyle(color: Colors.black),
                  ),
                ),
                ElevatedButton(
                  onPressed: onPressed,
                  child: const Text('More'),
                ),
              ],
            ),
            Row(
              children: [
                Icon(
                  icon,
                  color: Colors.black,
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: Text(
                    breakfastSnack,
                    style: const TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Icon(
                  icon,
                  color: Colors.black,
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: Text(
                    lunch,
                    style: const TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Icon(
                  icon,
                  color: Colors.black,
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: Text(
                    lunchSnack,
                    style: const TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Icon(
                  icon,
                  color: Colors.black,
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: Text(
                    dinner,
                    style: const TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
