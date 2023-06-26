import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final Logger logger = Logger();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hello'),
      ),
      body: Center(
        child: InkWell(
          onTap: (){
            logger.i('Tapped on Container');

          },
          onLongPress: (){
            logger.i('Long Tapped on Container');
          },
          onDoubleTap: (){
            logger.i('Double Tapped on Container');
          },
          child: Container(
           width: 200,
            height: 200,
            color:Colors.amber,
            child: Center(
                child: InkWell(
                  onTap: (){
                    logger.i('Text Widget Tapped!');
                  },
                child: Text(
                  "Click Here", style: TextStyle(fontSize: 21, fontWeight:FontWeight.w700 ),))),

          ),
        ),
      ),
    );
  }
}