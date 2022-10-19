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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextField(
            onChanged: (value) {
              setState(() {
                num[0] = _stringToDouble(value);
                _ansController.text = '${sum(num)}';
              });
            },
            decoration: _inputDecoration,
          ),
          TextField(
            onChanged: (value) {
              setState(() {
                num[1] = _stringToDouble(value);
                _ansController.text = '${sum(num)}';
              });
            },
            decoration: _inputDecoration,
          ),
          TextField(
            onChanged: (value) {
              setState(() {
                num[2] = _stringToDouble(value);
                _ansController.text = '${sum(num)}';
              });
            },
            decoration: _inputDecoration,
          ),
          TextField(
            onChanged: (value) {
              setState(() {
                num[3] = _stringToDouble(value);
                _ansController.text = '${sum(num)}';
              });
            },
            decoration: _inputDecoration,
          ),
          TextField(
            onChanged: (value) {
              setState(() {
                num[4] = _stringToDouble(value);
                _ansController.text = '${sum(num)}';
              });
            },
            decoration: _inputDecoration,
          ),
          TextField(
            onChanged: (value) {
              setState(() {
                num[5] = _stringToDouble(value);
                _ansController.text = '${sum(num)}';
              });
            },
            decoration: _inputDecoration,
          ),
          TextField(
            controller: _ansController,
          )
        ],
      ),
    );
  }

  static const _inputDecoration = InputDecoration(border: OutlineInputBorder());

  static double _stringToDouble(String value) {
    try {
      return double.parse(value);
    } on FormatException catch (e) {
      print(e);
      return 0;
    }
  }
}

double sum(List<double> num) {
  double ans = 0;
  for (double element in num) {
    ans += element;
  }
  return ans;
}
