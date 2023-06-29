import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

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
  static final Logger logger = Logger();

  const DashBoardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final DateTime now = DateTime.now();
    final DateTime initialDate = DateTime(now.year, now.month, now.day);
    final DateTime lastDate = DateTime(2023, 12, 31);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Hello"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Select Date',
              style: TextStyle(fontSize: 25),
            ),
            ElevatedButton(
              onPressed: () async {
                DateTime? datePicked = await showDatePicker(
                  context: context,
                  initialDate: initialDate,
                  firstDate: DateTime(2021),
                  lastDate: lastDate,
                );

                if (datePicked != null) {
                  logger.i(
                    'Date selected: ${datePicked.day}-${datePicked.month}-${datePicked.year}',
                  );
                }
              },
              child: const Text('Show'),
            ),
          ],
        ),
      ),
    );
  }
}
