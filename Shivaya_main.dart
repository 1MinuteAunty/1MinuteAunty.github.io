import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double sum = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextField(
            onChanged: (value) {
              setState(() {
                sum += double.parse(value);
              });
            },
          ),
          TextField(
            onChanged: (value) {
              setState(() {
                sum += double.parse(value);
              });
            },
          ),
          TextField(
            onChanged: (value) {
              setState(() {
                sum += double.parse(value);
              });
            },
          ),
          TextField(
            onChanged: (value) {
              setState(() {
                sum += double.parse(value);
              });
            },
          ),
          TextField(
            onChanged: (value) {
              setState(() {
                sum += double.parse(value);
              });
            },
          ),
          TextField(
            onChanged: (value) {
              setState(() {
                sum += double.parse(value);
              });
            },
          ),
          Text('$sum', style: const TextStyle(fontSize: 22))
        ],
      ),
    );
  }
}
