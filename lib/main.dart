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
        body: Container(
          height: 300,
          width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start ,
           crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                children: [
                  Text('R1', style: TextStyle(fontSize: 25),),
                  Text('R2', style: TextStyle(fontSize: 25),),
                  Text('R3', style: TextStyle(fontSize: 25),),
                  Text('R4', style: TextStyle(fontSize: 25),),
                  Text('R5', style: TextStyle(fontSize: 25),),

                ],
              ),
              Text('A', style: TextStyle(fontSize: 25),),
              Text('B', style: TextStyle(fontSize: 25),),
              Text('C', style: TextStyle(fontSize: 25),),
              Text('D', style: TextStyle(fontSize: 25),),
              Text('E', style: TextStyle(fontSize: 25),),
              ElevatedButton(onPressed: (){

              }, child: Text('Click'))
            ],
          ),
        )




    );
  }
}