import 'package:flutter/material.dart';

import '../menu_item.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key, required this.item});

  final MenuItem item;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(item.name)), // auto back button
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              item.image,
              height: 220,
              width: double.infinity,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stack) =>
                  const SizedBox(height: 220, child: Icon(Icons.image_not_supported, size: 80)),
            ),
            const SizedBox(height: 16),
            Text(item.name,
                style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            Text(item.description, style: const TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}