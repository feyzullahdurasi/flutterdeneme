import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int value = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Widget Detail"),
          centerTitle: true,
          backgroundColor: Colors.deepOrange,
          leading: const Text("Menu"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Text(value.toString()),
              Text("Feyzullah", style: TextStyle(Te))
          ],)
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              value ++;
            });
          },
          child: const Text("+"),
        ),
      ),
    );
  }
}
