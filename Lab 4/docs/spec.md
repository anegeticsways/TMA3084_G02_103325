Screen: Order Summary Screen in lib/order_summary.dart.
Inputs: itemName (String), quantity (int), unitPrice (double).
Output: Shows item name, quantity and total price formatted as "RM xx.xx".
Rules: Total must come from orderTotal() in lib/order.dart; Back button uses Navigator.pop.
Out of scope: Payment, cart, editing quantity, and changes to any other file.
Check: Vegetable Pizza, qty 2, unit price 12.50 shows "Total: RM 25.00".