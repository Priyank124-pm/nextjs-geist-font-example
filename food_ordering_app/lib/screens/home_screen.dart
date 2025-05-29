import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final List<String> categories = [
    'Pizza',
    'Burger',
    'Sushi',
    'Desserts',
    'Drinks',
  ];

  final List<Map<String, dynamic>> restaurants = [
    {
      'name': 'Pizza Palace',
      'image': 'https://images.unsplash.com/photo-1600891964599-f61ba0e24092',
      'rating': 4.5,
      'deliveryTime': '30-40 min',
    },
    {
      'name': 'Burger Hub',
      'image': 'https://images.unsplash.com/photo-1550547660-d9450f859349',
      'rating': 4.2,
      'deliveryTime': '20-30 min',
    },
    {
      'name': 'Sushi World',
      'image': 'https://images.unsplash.com/photo-1546069901-ba9599a7e63c',
      'rating': 4.8,
      'deliveryTime': '40-50 min',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Food Ordering'),
        backgroundColor: Colors.teal,
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              // TODO: Implement search
            },
          ),
          IconButton(
            icon: Icon(Icons.person),
            onPressed: () {
              // TODO: Navigate to profile
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Categories',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.teal[700],
              ),
            ),
            SizedBox(height: 12),
            Container(
              height: 50,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                separatorBuilder: (context, index) => SizedBox(width: 12),
                itemBuilder: (context, index) {
                  return Chip(
                    label: Text(categories[index]),
                    backgroundColor: Colors.teal[100],
                  );
                },
              ),
            ),
            SizedBox(height: 24),
            Text(
              'Restaurants',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.teal[700],
              ),
            ),
            SizedBox(height: 12),
            Expanded(
              child: ListView.separated(
                itemCount: restaurants.length,
                separatorBuilder: (context, index) => SizedBox(height: 16),
                itemBuilder: (context, index) {
                  final restaurant = restaurants[index];
                  return Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    elevation: 3,
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.horizontal(left: Radius.circular(12)),
                          child: Image.network(
                            restaurant['image'],
                            width: 120,
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  restaurant['name'],
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 8),
                                Row(
                                  children: [
                                    Icon(Icons.star, color: Colors.amber, size: 16),
                                    SizedBox(width: 4),
                                    Text(
                                      restaurant['rating'].toString(),
                                      style: TextStyle(fontSize: 14),
                                    ),
                                    SizedBox(width: 16),
                                    Icon(Icons.timer, size: 16, color: Colors.grey),
                                    SizedBox(width: 4),
                                    Text(
                                      restaurant['deliveryTime'],
                                      style: TextStyle(fontSize: 14),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.teal,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.list_alt), label: 'Orders'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}
