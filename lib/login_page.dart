import 'package:flutter/material.dart';
import 'package:ne_yiyelim/index.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late TextEditingController _ageController;
  late TextEditingController _heightController;
  late TextEditingController _weightController;
  String? _goal;
  late TextEditingController _allergiesController;

  @override
  void initState() {
    super.initState();
    _ageController = TextEditingController();
    _heightController = TextEditingController();
    _weightController = TextEditingController();
    _goal = null;
    _allergiesController = TextEditingController();
  }

  @override
  void dispose() {
    _ageController.dispose();
    _heightController.dispose();
    _weightController.dispose();
    _allergiesController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Container(
        color: Colors.black,
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Hello, first of all, we would like to get to know you!',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 16),
                // Yaş Girişi
                TextField(
                  controller: _ageController,
                  decoration: const InputDecoration(
                    labelText: 'Age',
                    filled: true,
                    fillColor: Colors.white,
                  ),
                ),
                const SizedBox(height: 8),
                // Boy Girişi
                TextField(
                  controller: _heightController,
                  decoration: const InputDecoration(
                    labelText: 'Height',
                    filled: true,
                    fillColor: Colors.white,
                  ),
                ),
                const SizedBox(height: 8),
                // Kilo Girişi
                TextField(
                  controller: _weightController,
                  decoration: const InputDecoration(
                    labelText: 'Weight',
                    filled: true,
                    fillColor: Colors.white,
                  ),
                ),
                const SizedBox(height: 8),
                // Hedef Girişi
                DropdownButtonFormField<String>(
                  value: _goal,
                  onChanged: (String? newValue) {
                    setState(() {
                      _goal = newValue;
                    });
                  },
                  items: <String>[
                    'Losing Weight',
                    'Gaining Weight',
                    'Balanced Diet'
                  ].map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  decoration: const InputDecoration(
                    labelText: 'Goal',
                    filled: true,
                    fillColor: Colors.white,
                  ),
                ),
                const SizedBox(height: 8),
                // Alerji Girişi
                TextField(
                  controller: _allergiesController,
                  decoration: const InputDecoration(
                    labelText: 'Allergies',
                    filled: true,
                    fillColor: Colors.white,
                  ),
                ),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {
                    final String age = _ageController.text;
                    final String height = _heightController.text;
                    final String weight = _weightController.text;
                    final String allergies = _allergiesController.text;

                    debugPrint('Age: $age');
                    debugPrint('Height: $height');
                    debugPrint('Weight: $weight');
                    debugPrint('Goal: $_goal');
                    debugPrint('Allergies: $allergies');

                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MyApp(),
                      ),
                    );
                  },
                  child: const Text('Login'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
