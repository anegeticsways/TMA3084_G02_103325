import 'package:flutter/material.dart';

import '../menu_item.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Pizza Store Menu')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          for (final item in menuItems)
            Card(
              color: Colors.orange,
              child: ListTile(
                contentPadding: const EdgeInsets.all(16),
                title: Text(
                  item.name,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                trailing: const Icon(Icons.chevron_right, color: Colors.white),
                onTap: () => Navigator.pushNamed(context, item.route),
              ),
            ),
        ],
      ),
    );
  }
}