import 'package:flutter/material.dart';
import 'admin_complaint_list_page.dart';

class AdminCategory extends StatelessWidget {
  final List<String> categories = [
    'Teaching',
    'Exams',
    'Library',
    'Washrooms',
    'Finance',
    'Ground',
    'Transport',
  ];

  AdminCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          Colors.white, // Set background color of the Scaffold to white
      appBar: AppBar(
        title: const Text('Categories'),
      ),
      body: ListView.builder(
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.symmetric(
                vertical: 8.0,
                horizontal: 16.0), // Margin around each container
            decoration: BoxDecoration(
              color: Colors.yellow[600], // Background color of the container
              borderRadius: BorderRadius.circular(8.0), // Rounded corners
            ),
            child: ListTile(
              contentPadding:
                  const EdgeInsets.all(16.0), // Padding inside the container
              title: Text(
                categories[index],
                style: const TextStyle(
                  fontSize: 30.0, // Text size
                  fontWeight: FontWeight.bold, // Text weight (optional)
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        AdminComplaintListPage(category: categories[index]),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
