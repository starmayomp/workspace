import 'package:flutter/material.dart';

class RoleSelectionScreen extends StatelessWidget {
  const RoleSelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Select Role'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/client/login');
              },
              child: const Text('Client'),
            ),
            const SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/employee/login');
              },
              child: const Text('Employee'),
            ),
          ],
        ),
      ),
    );
  }
}

class ClientLoginPage extends StatelessWidget {
  const ClientLoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Client Login'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Client authentication logic here
            // For demonstration, directly navigate to client dashboard
            Navigator.pushReplacementNamed(context, '/client/dashboard');
          },
          child: const Text('Login as Client'),
        ),
      ),
    );
  }
}

class EmployeeLoginPage extends StatelessWidget {
  const EmployeeLoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Employee Login'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Employee authentication logic here
            // For demonstration, directly navigate to employee dashboard
            Navigator.pushReplacementNamed(context, '/employee/dashboard');
          },
          child: const Text('Login as Employee'),
        ),
      ),
    );
  }
}

// Client Dashboard Page
class ClientDashboardPage extends StatelessWidget {
  const ClientDashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Client Dashboard'),
      ),
      body: const Center(
        child: Text('Welcome to Client Dashboard'),
      ),
    );
  }
}

// Employee Dashboard Page
class EmployeeDashboardPage extends StatelessWidget {
  const EmployeeDashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Employee Dashboard'),
      ),
      body: const Center(
        child: Text('Welcome to Employee Dashboard'),
      ),
    );
  }
}
