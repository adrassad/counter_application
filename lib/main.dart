import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 122, 148, 205),
        appBar: AppBar(
            title: const Text('Counter'),
            backgroundColor: const Color.fromARGB(255, 61, 62, 151)),
        body: const Center(
          child: CounterWidget(),
        ),
      ),
    );
  }
}

class CounterWidget extends StatefulWidget {
  const CounterWidget({super.key});

  @override
  _CounterWidgetState createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  int _count = 50;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          child: const Text('Tap "-" to decrement',
              style: TextStyle(color: Colors.white)),
        ),
        Container(
            // width: 15,
            // height: 15 * 0.3,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 194, 209, 228),
              boxShadow: const <BoxShadow>[
                BoxShadow(
                  color: Colors.black,
                  offset: Offset(0, 1),
                ),
              ],
              borderRadius: BorderRadius.circular(3),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    IconButton(
                      icon: const Icon(Icons.remove),
                      onPressed: () {
                        setState(() {
                          _decrementCounter();
                        });
                      },
                    ),
                    Text('$_count'),
                    IconButton(
                      icon: const Icon(Icons.add),
                      onPressed: () {
                        setState(() {
                          _incrementCounter();
                        });
                      },
                    ),
                  ],
                ),
              ],
            )),
        Container(
          child: Text('Tap "+" to decrement',
              style: TextStyle(color: Colors.white)),
        ),
      ],
    );
  }

  void _incrementCounter() {
    setState(() {
      _count++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _count--;
    });
  }
}
