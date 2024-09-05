import 'package:flutter/material.dart';

class TeamPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MCBOA'),
        actions: [
          TextButton(
            onPressed: () {},
            child: Text('Home'),
          ),
          TextButton(
            onPressed: () {
              TeamPage();
            },
            child: Text('Our Team'),
          ),
          TextButton(
            onPressed: () {},
            child: Text('Contact'),
          ),
          TextButton(
            onPressed: () {
              TeamPage();
            },
            child: Text('Document'),
          ),
          TextButton(
            onPressed: () {
              TeamPage();
            },
            child: Text('Login/Register'),
          ),
        ],
      ),
      body: Column(
        children: [
          // Hero image
          Image.asset('assets/hero_image.jpg'),
          // Team members section
          ListView(
            children: [
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage(
                      'assets/dharm_veer_singh.jpg'), // Replace with actual image path
                ),
                title: Text('Dharm Veer Singh'),
                subtitle: Text('President'),
              ),
              // ... other team members
            ],
          ),
        ],
      ),
    );
  }
}
