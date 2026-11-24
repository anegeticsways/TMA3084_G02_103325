import 'package:flutter/material.dart';
import 'order.dart';

class OrderSummaryScreen extends StatelessWidget {
  final String itemName;
  final int quantity;
  final double unitPrice;

  const OrderSummaryScreen({
    super.key,
    required this.itemName,
    required this.quantity,
    required this.unitPrice,
  });

  @override
  Widget build(BuildContext context) {
    final double total = orderTotal(unitPrice, quantity);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Order Summary'),
      ),
      body: Column(
        children: [
          Text(itemName),
          Text('Quantity: $quantity'),
          Text('Total: RM ${total.toStringAsFixed(2)}'),
          ElevatedButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Back'),
          ),
        ],
      ),
    );
  }
}