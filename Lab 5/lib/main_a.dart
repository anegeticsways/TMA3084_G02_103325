import 'package:flutter/material.dart';
import 'screen1.dart';
import 'screen2.dart';
import 'screen3.dart';
import 'screen4.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bottom Navigation Bar',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      ),
      home: const BottomNavLab(),
    );
  }
}

class BottomNavLab extends StatefulWidget {
  const BottomNavLab({super.key});

  @override
  State<BottomNavLab> createState() => _BottomNavLabState();
}

class _BottomNavLabState extends State<BottomNavLab> {
  // Index of the selected tab. The first item from the left is 0.
  int currentIndex = 0;

  // One widget per tab, in the same order as the bar items.
  final List<Widget> screens = const [
    Screen1(),
    Screen2(),
    Screen3(),
    Screen4(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bottom Navigation Bar'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      // The body follows the selected index.
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.white,
        backgroundColor: Colors.blue,
        iconSize: 30,
        currentIndex: currentIndex,
        onTap: (int index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.alarm), label: 'Alarm'),
          BottomNavigationBarItem(
              icon: Icon(Icons.business), label: 'Business'),
          BottomNavigationBarItem(icon: Icon(Icons.school), label: 'School'),
        ],
      ),
    );
  }
}
