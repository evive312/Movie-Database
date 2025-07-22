import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main(){
  runApp(const MovieApp());
}

class MovieApp extends StatelessWidget{
  const MovieApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Movie Genres',
      theme: ThemeData(
        colorSchemeSeed: Colors.deepPurple,
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}