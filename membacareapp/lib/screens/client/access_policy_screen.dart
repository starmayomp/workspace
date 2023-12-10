import 'package:flutter/material.dart';

class AccessPolicyScreen extends StatefulWidget {
  const AccessPolicyScreen({super.key});

  @override
  _AccessPolicyScreenState createState() => _AccessPolicyScreenState();
}

class _AccessPolicyScreenState extends State<AccessPolicyScreen> {
  final TextEditingController _searchController = TextEditingController();
  List<String> documents = [
    'Policy Document 1',
    'Policy Document 2',
    'Procedures Document 1',
    'Procedures Document 2',
    // Placeholder data for documents
  ];

  List<String> filteredDocuments = [];

  @override
  void initState() {
    super.initState();
    filteredDocuments.addAll(documents);
  }

  void filterDocuments(String query) {
    List<String> filteredList = documents
        .where(
            (document) => document.toLowerCase().contains(query.toLowerCase()))
        .toList();

    setState(() {
      filteredDocuments.clear();
      filteredDocuments.addAll(filteredList);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Client Portal: Policies & Procedures'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: _searchController,
              onChanged: (value) {
                filterDocuments(value);
              },
              decoration: const InputDecoration(
                labelText: 'Search Documents',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20.0),
            Expanded(
              child: ListView.builder(
                itemCount: filteredDocuments.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    title: Text(filteredDocuments[index]),
                    // Add onTap to navigate to specific document or perform an action
                    // onTap: () {
                    //   // Handle document selection or navigation here
                    // },
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
