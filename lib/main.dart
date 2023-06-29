import 'package:flutter/material.dart';
import 'package:flutter_basics/ui_helper/util.dart';

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
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: const TextTheme(
          displayLarge: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
          titleMedium: TextStyle(fontSize: 11, fontWeight: FontWeight.w500, fontStyle: FontStyle.italic),
        ),
      ),
      home: const DashBoardScreen(),
    );
  }
}

class DashBoardScreen extends StatelessWidget {
  const DashBoardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hello"),
      ),
      body: Column(
        children: [
          Text('Text 1', style: Theme.of(context).textTheme.displayLarge!.copyWith(color: Colors.orange),),
          Text('Text 2', style: Theme.of(context).textTheme.titleMedium),
          Text('Text 3', style: Theme.of(context).textTheme.displayLarge!.copyWith(color: Colors.orange),),
          Text('Text 4', style: mTextStyle11()),
          Text('Text 5', style: mTextStyle16()),
          Text('Text 6', style: mTextStyle21()),
          Text('Text 7', style: mTextStyle41()),
        ],
      ),
    );
  }
}
