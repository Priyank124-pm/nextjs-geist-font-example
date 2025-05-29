import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 60),
              Center(
                child: Icon(
                  Icons.fastfood,
                  size: 80,
                  color: Colors.teal,
                ),
              ),
              SizedBox(height: 40),
              Text(
                'Sign Up',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.teal[700],
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 24),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Full Name',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                keyboardType: TextInputType.name,
              ),
              SizedBox(height: 16),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Email or Phone',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(height: 16),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Password',
                  borderRadius: BorderRadius.circular(8),
                  border: OutlineInputBorder(),
                ),
                obscureText: true,
              ),
              SizedBox(height: 16),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Confirm Password',
                  borderRadius: BorderRadius.circular(8),
                  border: OutlineInputBorder(),
                ),
                obscureText: true,
              ),
              SizedBox(height: 24),
              ElevatedButton(
                onPressed: () {
                  // TODO: Implement sign up logic
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.teal,
                  padding: EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Text(
                  'Sign Up',
                  style: TextStyle(fontSize: 18),
                ),
              ),
              SizedBox(height: 16),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  'Already have an account? Sign In',
                  style: TextStyle(color: Colors.teal[700]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
