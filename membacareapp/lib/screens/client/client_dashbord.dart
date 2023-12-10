import 'package:flutter/material.dart';

class ClientDashboard extends StatelessWidget {
  const ClientDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Client Dashboard'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Welcome, John Doe', // Replace with dynamic username
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                // Implement action for shift notes
                // For example, navigate to shift notes screen
                Navigator.pushNamed(context, '/client/shift_notes');
              },
              child: const Text('View Shift Notes'),
            ),
            const SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                // Implement action for invoices
                // For example, navigate to invoices screen
                Navigator.pushNamed(context, '/client/invoices');
              },
              child: const Text('View Invoices'),
            ),
            const SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                // Implement action for invoices
                // For example, navigate to invoices screen
                Navigator.pushNamed(context, '/client/access_policy');
              },
              child: const Text('Access Policy and Procedure'),
            ),
            const SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                // Implement action for invoices
                // For example, navigate to invoices screen
                Navigator.pushNamed(context, '/role_selection');
              },
              child: const Text('Role Selection Screen'),
            ),
            // Add more widgets/buttons as needed for various actions or information
          ],
        ),
      ),
    );
  }
}
