import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const SettingsScreen(),
    );
  }
}

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool darkMode = false;
  bool agreeToTerms = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: Column(
        children: [
          SwitchListTile(
            title: const Text('Dark Mode'),
            value: darkMode,
            onChanged: (value) {
              setState(() {
                darkMode = value;
              });
            },
          ),

          CheckboxListTile(
            title: const Text('Agree to Terms'),
            value: agreeToTerms,
            onChanged: (value) {
              setState(() {
                agreeToTerms = value!;
              });
            },
          ),

          ElevatedButton(
            onPressed: agreeToTerms
                ? () {
                    print('Continue');
                  }
                : null,
            child: const Text('Continue'),
          ),
        ],
      ),
    );
  }
}