import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class WideLayout extends StatelessWidget {
  const WideLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: const Icon(Icons.person),
                  title: Text('Title ${index + 1}'),
                );
              }),
        ),
        Expanded(
          flex: 3,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                    child: MouseRegion(
                      child: const Text(
                        'Hello',
                        style: TextStyle(color: Colors.red, fontSize: 50),
                      ),
                      onEnter: (event) {
                        if (kDebugMode) {
                          print(event);
                        }
                      },
                      onHover: (event) {
                        if (kDebugMode) {
                          print('Hello world');
                        }
                      },
                    )),
                // ElevatedButton(onPressed: () {}, child: Text('Contact Me'))
              ],
            ),
          ),
        ),
      ],
    );
  }
}