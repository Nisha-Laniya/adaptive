import 'package:flutter/foundation.dart';
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
          visualDensity: VisualDensity(vertical:3,horizontal:1)
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
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

class WideLayout extends StatelessWidget {
  const WideLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return Container(child: NarrowLayout(),color: Colors.green,);
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
                        'hello',
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
                  MaterialPageRoute(builder: (context) => HelloScreen()));
            },
          );
        });
  }
}

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
