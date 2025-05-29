import 'package:flutter/material.dart';
import 'screens/sign_in_screen.dart';
import 'screens/sign_up_screen.dart';
import 'screens/verification_screen.dart';
import 'screens/location_permission_screen.dart';
import 'screens/home_screen.dart';
import 'screens/food_item_detail_screen.dart';
import 'screens/cart_screen.dart';
import 'screens/order_tracking_screen.dart';
import 'screens/profile_screen.dart';

void main() {
  runApp(FoodOrderingApp());
}

class FoodOrderingApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food Ordering Restaurant',
      theme: ThemeData(
        primarySwatch: Colors.teal,
        scaffoldBackgroundColor: Colors.white,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => SignInScreen(),
        '/sign_up': (context) => SignUpScreen(),
        '/verification': (context) => VerificationScreen(),
        '/location_permission': (context) => LocationPermissionScreen(),
        '/home': (context) => HomeScreen(),
        '/food_detail': (context) => FoodItemDetailScreen(
              name: 'Sample Food',
              imageUrl: 'https://images.unsplash.com/photo-1600891964599-f61ba0e24092',
              description: 'Delicious food item description.',
              price: 9.99,
            ),
        '/cart': (context) => CartScreen(),
        '/order_tracking': (context) => OrderTrackingScreen(),
        '/profile': (context) => ProfileScreen(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
