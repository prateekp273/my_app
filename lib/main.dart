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
      body: Container(
        width: double.infinity,
          height: double.infinity,

        child: Center(
          child: Container(
            width:150,
            height: 150,
           
            decoration: BoxDecoration(
              color: Colors.blueGrey,
            //  borderRadius: BorderRadius.circular(21),
              border: Border.all(
                width:5,
                color: Colors.black
              ),
                boxShadow: const [
                   BoxShadow(
                    blurRadius: 51,
                    color: Colors.grey,
                    spreadRadius: 11
                  )
                ],
              shape: BoxShape.circle
            ),
          ),
        )
      ),
    );
  }
}
