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
  final TextEditingController _ansController = TextEditingController();

  List<double> num = [0, 0, 0, 0, 0, 0];
  bool headline = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Container(width: 100, child: Text('First')),
              Container(
                height: 30,
                width: 300,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border:
                        Border.all(color: Color.fromRGBO(119, 119, 119, 1))),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, bottom: 5),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: 'First Price', border: InputBorder.none),
                    onChanged: (value) {
                      setState(() {
                        num[0] = _stringToDouble(value);
                        _ansController.text = '${sum(num)}';
                      });
                    },
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Container(width: 100, child: Text('Second')),
              Container(
                height: 30,
                width: 300,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border:
                        Border.all(color: Color.fromRGBO(119, 119, 119, 1))),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, bottom: 5),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: 'Second Price', border: InputBorder.none),
                    onChanged: (value) {
                      setState(() {
                        num[1] = _stringToDouble(value);
                        _ansController.text = '${sum(num)}';
                      });
                    },
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Container(width: 100, child: Text('Third')),
              Container(
                height: 30,
                width: 300,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border:
                        Border.all(color: Color.fromRGBO(119, 119, 119, 1))),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, bottom: 5),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: 'Third Price', border: InputBorder.none),
                    onChanged: (value) {
                      setState(() {
                        num[2] = _stringToDouble(value);
                        _ansController.text = '${sum(num)}';
                      });
                    },
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Container(width: 100, child: Text('Fourth')),
              Container(
                height: 30,
                width: 300,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border:
                        Border.all(color: Color.fromRGBO(119, 119, 119, 1))),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, bottom: 5),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: 'Fourth Price', border: InputBorder.none),
                    onChanged: (value) {
                      setState(() {
                        num[3] = _stringToDouble(value);
                        _ansController.text = '${sum(num)}';
                      });
                    },
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Container(width: 100, child: Text('Total Rupees')),
              Container(
                width: 300,
                height: 30,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border:
                        Border.all(color: Color.fromRGBO(119, 119, 119, 1))),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, bottom: 5),
                  child: TextFormField(
                    decoration: InputDecoration(
                        hintText: 'Total Rupess', border: InputBorder.none),
                    controller: _ansController,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 100),
            child: Align(
                alignment: Alignment.topLeft,
                child: Text('Shivaya', style: const TextStyle(fontSize: 22))),
          )
        ],
      ),
    );
  }

  static double _stringToDouble(String value) {
    try {
      return double.parse(value);
    } on FormatException catch (e) {
      print(e);
      return 0;
    }
  }

  static double sum(List<double> num) {
    double ans = 0;
    for (double element in num) {
      ans += element;
    }
    return ans;
  }
}

