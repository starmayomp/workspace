import 'package:flutter/material.dart';

class InvoicesScreen extends StatelessWidget {
  final List<String> claimedInvoices = [
    'Invoice 001',
    'Invoice 002',
    'Invoice 003',
    // Placeholder data for claimed invoices
  ];

  InvoicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Client Invoices'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Filter and sorting options (you can expand this section as needed)
            const Text(
              'Filter & Sort Options',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            // Add filter and sorting widgets/buttons here

            const SizedBox(height: 20.0),

            // List of claimed invoices
            const Text(
              'Claimed Invoices:',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: claimedInvoices.length,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    child: ListTile(
                      title: Text(claimedInvoices[index]),
                      // Add onTap to view or manage specific invoice
                      // For example, navigate to a detailed invoice view
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
