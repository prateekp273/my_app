import 'package:flutter/material.dart';

void main() {
  runApp(const FlutterApp());
}

class FlutterApp extends StatelessWidget {
  const FlutterApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "FlutterApp",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.lightGreen),
      home: const DashBoardScreen(),
    );
  }
}

class DashBoardScreen extends StatelessWidget {
  const DashBoardScreen({Key? key}) : super(key: key); // Named 'key' parameter is already present

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Hellooooooooooooooooooooo"),
        ),
        body: Center(
          child: Card(
            shadowColor: Colors.orange,
            elevation: 12,

              child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Hello World!', style: TextStyle(fontSize: 55),),
          )),
        )
    );
  }
}