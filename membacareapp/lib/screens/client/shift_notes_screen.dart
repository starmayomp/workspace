import 'package:flutter/material.dart';

class ShiftNotesScreen extends StatelessWidget {
  final List<String> shiftNotes = [
    'Shift Note 1',
    'Shift Note 2',
    // Placeholder data for shift notes
  ];

  final List<String> reports = [
    'Report 1',
    'Report 2',
    // Placeholder data for reports
  ];

  ShiftNotesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Client Shift Notes & Reports'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(
              onPressed: () {
                // Implement action to view shift notes
                // For example, show a dialog with shift notes list
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: const Text('Shift Notes'),
                      content: SingleChildScrollView(
                        child: Column(
                          children: shiftNotes
                              .map((note) => ListTile(
                                    title: Text(note),
                                    // Add onTap to download or view specific shift note
                                  ))
                              .toList(),
                        ),
                      ),
                    );
                  },
                );
              },
              child: const Text('View Shift Notes'),
            ),
            const SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                // Implement action to view reports
                // For example, show a dialog with reports list
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: const Text('Reports'),
                      content: SingleChildScrollView(
                        child: Column(
                          children: reports
                              .map((report) => ListTile(
                                    title: Text(report),
                                    // Add onTap to download or view specific report
                                  ))
                              .toList(),
                        ),
                      ),
                    );
                  },
                );
              },
              child: const Text('View Reports'),
            ),
          ],
        ),
      ),
    );
  }
}
