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
      body: Column(
      //  mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 2,
            child: Container(
             // width:50,
              height: 100,
              color: Colors.blue,
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(
            //  width:50,
              height: 100,
              color: Colors.orange,
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
           //   width:50,
              height: 100,
              color: Colors.grey,
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
           //   width:50,
              height: 100,
              color: Colors.green,
            ),
          ),
        ],
      )
    );
  }
}