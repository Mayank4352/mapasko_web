import 'package:flutter/material.dart';
import 'package:mapsko/home/home.dart';
import 'package:mapsko/home/widgets/homeAppBar.dart';
import 'package:mapsko/teampage/team.dart';

class ContactUsPage extends StatelessWidget {
  const ContactUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const HomeAppBar(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Phone Number'),
                    TextButton(
                      onPressed: () {
                        // Handle phone call
                      },
                      child: const Text('+91-9910261081'),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Email Address'),
                    TextButton(
                      onPressed: () {
                        // Handle email
                      },
                      child: const Text('mobos82@gmail.com'),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Office Address'),
                    TextButton(
                      onPressed: () {
                        // Handle directions
                      },
                      child: const Text(
                          'C/O Maintenance Office, Mapsko Casa Bella, Sector 82, Gurugram, Haryana'),
                    ),
                  ],
                ),
              ],
            ),
            // Contact form
            const SizedBox(height: 20),
            const Text(
              'Contact Us',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
                'If You Have Any Queries, Please Feel Free To Contact Us'),
            const SizedBox(height: 20),
            Form(
              child: Column(
                children: [
                  // Use Expanded to make form fields responsive
                  Expanded(
                    child: TextFormField(
                      decoration: const InputDecoration(labelText: 'Your Name'),
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
                      decoration:
                          const InputDecoration(labelText: 'Your Email'),
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
                      decoration: const InputDecoration(labelText: 'Subject'),
                    ),
                  ),
                  Expanded(
                    child: TextFormField(
                      maxLines: 5,
                      decoration: const InputDecoration(labelText: 'Message'),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Handle form submission
                    },
                    child: const Text('Send Message'),
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
