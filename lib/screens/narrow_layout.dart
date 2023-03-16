import 'package:flutter/material.dart';
import 'hello_screen.dart';

class NarrowLayout extends StatelessWidget {
  const NarrowLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return ListTile(
            leading: const Icon(Icons.person),
            title: Text('Title ${index + 1}'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const HelloScreen()));
            },
          );
        });
  }
}