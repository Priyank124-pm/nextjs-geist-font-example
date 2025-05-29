import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  final List<Map<String, dynamic>> cartItems = [
    {
      'name': 'Pizza Margherita',
      'quantity': 2,
      'price': 12.99,
    },
    {
      'name': 'Cheeseburger',
      'quantity': 1,
      'price': 9.99,
    },
  ];

  double get totalPrice {
    double total = 0;
    for (var item in cartItems) {
      total += item['price'] * item['quantity'];
    }
    return total;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Cart'),
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.separated(
                itemCount: cartItems.length,
                separatorBuilder: (context, index) => Divider(),
                itemBuilder: (context, index) {
                  final item = cartItems[index];
                  return ListTile(
                    title: Text(item['name']),
                    subtitle: Text('Quantity: ${item['quantity']}'),
                    trailing: Text('\$${(item['price'] * item['quantity']).toStringAsFixed(2)}'),
                  );
                },
              ),
            ),
            Divider(thickness: 2),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Row(
                children: [
                  Text(
                    'Total:',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Text(
                    '\$${totalPrice.toStringAsFixed(2)}',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.teal[700]),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  // TODO: Implement checkout logic
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.teal,
                  padding: EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Text(
                  'Checkout',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
