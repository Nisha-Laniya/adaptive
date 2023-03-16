import 'package:adaptive/screens/wide_layout.dart';
import 'package:flutter/material.dart';

import 'narrow_layout.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Adaptive'),
        ),
        body: LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth > 500) {
              return const WideLayout();
            } else {
              return const NarrowLayout();
            }
          },
        ));
  }
}