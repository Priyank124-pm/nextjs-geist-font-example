import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        backgroundColor: Colors.teal,
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          CircleAvatar(
            radius: 50,
            backgroundColor: Colors.teal,
            child: Icon(
              Icons.person,
              size: 60,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 16),
          Center(
            child: Text(
              'John Doe',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 8),
          Center(
            child: Text(
              'johndoe@example.com',
              style: TextStyle(fontSize: 16, color: Colors.grey[600]),
            ),
          ),
          SizedBox(height: 24),
          ListTile(
            leading: Icon(Icons.history, color: Colors.teal),
            title: Text('Order History'),
            onTap: () {
              // TODO: Navigate to order history
            },
          ),
          ListTile(
            leading: Icon(Icons.settings, color: Colors.teal),
            title: Text('Settings'),
            onTap: () {
              // TODO: Navigate to settings
            },
          ),
          ListTile(
            leading: Icon(Icons.logout, color: Colors.teal),
            title: Text('Logout'),
            onTap: () {
              // TODO: Implement logout
            },
          ),
        ],
      ),
    );
  }
}
