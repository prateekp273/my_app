import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


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

          title: const Text('Hello'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          margin: const EdgeInsets.only(right: 11),
                          height: 200,
                          width: 200,
                          color: Colors.lightGreen,
                        ),
                      ), Container(
                        margin: const EdgeInsets.only(right: 11),
                        height: 200,
                        width: 200,
                        color: Colors.orange,
                      ), Container(
                        margin: const EdgeInsets.only(right: 11),
                        height: 200,
                        width: 200,
                        color: Colors.blue,
                      ), Container(
                        margin: const EdgeInsets.only(right: 11),
                        height: 200,
                        width: 200,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 11),
                height: 200,
               // width: 200,
                color: Colors.orange,
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 11),
                height: 200,
               // width: 200,
                color: Colors.blue,
              ),
              Container(
                margin:const EdgeInsets.only(bottom: 11),
                height: 200,
               // width: 200,
                color: Colors.grey,
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 11),
                height: 200,
             //   width: 200,
                color: Colors.blue,
              ),
    Container(
    margin: const EdgeInsets.only(bottom: 11),
    height: 200,
    //width: 200,
    color: Colors.black,
    ),
    Container(
    margin: const EdgeInsets.only(bottom: 11),
    height: 200,
   // width: 200,
    color: Colors.deepPurpleAccent,
    ),
    Container(
    margin: const EdgeInsets.only(bottom: 11),
    height: 200,
  //  width: 200,
    color: Colors.amberAccent,
    ),
            ],
          ),
        )




    );
  }
}