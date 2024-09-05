import 'package:flutter/material.dart';
import 'package:mapsko/home/home.dart';
import 'package:mapsko/teampage/team.dart';

class ContactUsPage extends StatelessWidget {
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
              HomePage();
            },
            child: Text('Our Team'),
          ),
          TextButton(
            onPressed: () {
              TeamPage();
            },
            child: Text('Contact'),
          ),
          TextButton(
            onPressed: () {
              ContactUsPage();
            },
            child: Text('Document'),
          ),
          TextButton(
            onPressed: () {},
            child: Text('Login/Register'),
          ),
          // ... other buttons
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Contact information
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Phone Number'),
                    TextButton(
                      onPressed: () {
                        // Handle phone call
                      },
                      child: Text('+91-9910261081'),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Email Address'),
                    TextButton(
                      onPressed: () {
                        // Handle email
                      },
                      child: Text('mobos82@gmail.com'),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Office Address'),
                    TextButton(
                      onPressed: () {
                        // Handle directions
                      },
                      child: Text(
                          'C/O Maintenance Office, Mapsko Casa Bella, Sector 82, Gurugram, Haryana'),
                    ),
                  ],
                ),
              ],
            ),
            // Contact form
            SizedBox(height: 20),
            Text(
              'Contact Us',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text('If You Have Any Queries, Please Feel Free To Contact Us'),
            SizedBox(height: 20),
            Form(
              child: Column(
                children: [
                  // Use Expanded to make form fields responsive
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(labelText: 'Your Name'),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter your name';
                        }
                        return null;
                      },
                    ),
                  ),
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(labelText: 'Your Email'),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter your email address';
                        }
                        if (!RegExp(
                                r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z0-9]+$")
                            .hasMatch(value)) {
                          return 'Please enter a valid email address';
                        }
                        return null;
                      },
                    ),
                  ),
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(labelText: 'Subject'),
                    ),
                  ),
                  Expanded(
                    child: TextFormField(
                      maxLines: 5,
                      decoration: InputDecoration(labelText: 'Message'),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Handle form submission
                    },
                    child: Text('Send Message'),
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
