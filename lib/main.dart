import 'package:flutter/material.dart';

import 'models/counter.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Testing App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Counter counter = Counter();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [buildDecrementBtn(), buildText(), buildIncrementBtn()],
          ),
        ),
      ),
    );
  }

  GestureDetector buildIncrementBtn() {
    return GestureDetector(
      onTap: () {
        setState(() {
          counter.increment();
        });
      },
      child: Container(
        width: 60,
        height: 60,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
        ),
        child: const Icon(Icons.add, color: Colors.blue),
      ),
    );
  }

  GestureDetector buildDecrementBtn() {
    return GestureDetector(
      onTap: () {
        setState(() {
          counter.decrement();
        });
      },
      child: Container(
        width: 60,
        height: 60,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
        ),
        child: const Icon(Icons.remove, color: Colors.blue),
      ),
    );
  }

  Text buildText() {
    return Text(
      '${counter.value}',
      style: const TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 80,
      ),
    );
  }
}
