import 'package:adaptive/screens/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          //Defines the visual density of user interface components.
          visualDensity: VisualDensity(vertical:3,horizontal:1)
      ),
      home: const HomePage(),
    );
  }
}








