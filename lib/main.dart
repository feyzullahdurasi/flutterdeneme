import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:untitled/colors.dart';
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
      theme: ThemeData(fontFamily: "DTech"),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Widget Detail"),
          centerTitle: true,
          backgroundColor: Colors.deepOrange,
          leading: const Text("Menu"),
        ),
        body: Column(
          children: [
            Image.network("lib/assets/image/image1.jpg"),
            // mainAxisAlignment: MainAxisAlignment.center,
            ElevatedButton(onPressed: () {}, child: const Text("Tıkla")),
            Text(value.toString()),
              Text("Feyzullah",
                  style: TextStyle(
                      fontFamily: "Dtech",
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 10,
                      color: HexColor(primarycolor)
                  )
              )
          ],),
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
