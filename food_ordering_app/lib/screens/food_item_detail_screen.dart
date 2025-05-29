import 'package:flutter/material.dart';

class FoodItemDetailScreen extends StatefulWidget {
  final String name;
  final String imageUrl;
  final String description;
  final double price;

  FoodItemDetailScreen({
    required this.name,
    required this.imageUrl,
    required this.description,
    required this.price,
  });

  @override
  _FoodItemDetailScreenState createState() => _FoodItemDetailScreenState();
}

class _FoodItemDetailScreenState extends State<FoodItemDetailScreen> {
  int quantity = 1;

  void incrementQuantity() {
    setState(() {
      quantity++;
    });
  }

  void decrementQuantity() {
    if (quantity > 1) {
      setState(() {
        quantity--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.name),
        backgroundColor: Colors.teal,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network(
              widget.imageUrl,
              width: double.infinity,
              height: 250,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.name,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.teal[700],
                    ),
                  ),
                  SizedBox(height: 12),
                  Text(
                    widget.description,
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Text(
                        '\$${widget.price.toStringAsFixed(2)}',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.teal[700],
                        ),
                      ),
                      Spacer(),
                      Row(
                        children: [
                          IconButton(
                            onPressed: decrementQuantity,
                            icon: Icon(Icons.remove_circle_outline),
                            color: Colors.teal,
                            iconSize: 30,
                          ),
                          Text(
                            quantity.toString(),
                            style: TextStyle(fontSize: 18),
                          ),
                          IconButton(
                            onPressed: incrementQuantity,
                            icon: Icon(Icons.add_circle_outline),
                            color: Colors.teal,
                            iconSize: 30,
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        // TODO: Add to cart logic
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.teal,
                        padding: EdgeInsets.symmetric(vertical: 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: Text(
                        'Add to Cart',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
