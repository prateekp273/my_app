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
      theme: ThemeData(primarySwatch: Colors.blue),
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
        title: const Text("Dashboard"),
      ),
      body: Center(
        child:  Container(
          width: 100,
          height: 100,
          child: const CircleAvatar(
            backgroundImage:  AssetImage('assests/images/flutter.jpg'),
            backgroundColor: Colors.green,
            radius: 800,
          ),
        ),
      )
    );
  }
}