import 'package:all_about_provider/models/following.dart';
import 'package:all_about_provider/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Following(),
      child: MaterialApp(
        home: HomeScreen(),
      ),
    );
  }
}

