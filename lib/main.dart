import 'package:MysteryTasks/presentation/screens/registration_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MysteryTasks());
}

class MysteryTasks extends StatelessWidget {
  const MysteryTasks({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MysteryTasks',
      home: const RegistrationScreen(),
    );
  }
}

