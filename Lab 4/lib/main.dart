import 'package:flutter/material.dart';

import 'menu_item.dart';
import 'screens/detail_screen.dart';
import 'screens/menu_screen.dart';

void main() => runApp(const PizzaStoreApp());

class PizzaStoreApp extends StatelessWidget {
  const PizzaStoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pizza Store',
      theme: ThemeData(colorSchemeSeed: Colors.orange, useMaterial3: true),
      initialRoute: '/menu',
      routes: {
        '/menu': (context) => const MenuScreen(),
        for (final item in menuItems)
          item.route: (context) => DetailScreen(item: item),
      },
    );
  }
}