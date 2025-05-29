import 'package:flutter/material.dart';

class OrderTrackingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Placeholder for map widget
    return Scaffold(
      appBar: AppBar(
        title: Text('Order Tracking'),
        backgroundColor: Colors.teal,
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: Colors.grey[300],
              child: Center(
                child: Text(
                  'Map View Placeholder',
                  style: TextStyle(fontSize: 18, color: Colors.grey[700]),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              children: [
                Text(
                  'Your order is on the way!',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.teal[700]),
                ),
                SizedBox(height: 12),
                Text(
                  'Estimated delivery time: 15 minutes',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 24),
                ElevatedButton.icon(
                  onPressed: () {
                    // TODO: Implement contact delivery person
                  },
                  icon: Icon(Icons.phone),
                  label: Text('Contact Delivery Person'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.teal,
                    padding: EdgeInsets.symmetric(vertical: 16, horizontal: 24),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
