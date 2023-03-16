import 'package:flutter/material.dart';

class HelloScreen extends StatelessWidget {
  const HelloScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hello Screen'),
      ),
      body: const Center(
        child: Text(
          'Hello',
          style: TextStyle(color: Colors.red, fontSize: 50),
        ),
      ),
    );
  }
}