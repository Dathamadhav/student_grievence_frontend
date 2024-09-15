import 'package:flutter/material.dart';

class StudentDashboard extends StatelessWidget {
  const StudentDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Student Dashboard"),
        backgroundColor: Colors.orange, // App bar color
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Wrap(
            spacing: 20.0, // Horizontal space between containers
            runSpacing: 20.0, // Vertical space between containers
            alignment: WrapAlignment.center,
            children: <Widget>[
              Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Column(
                  mainAxisAlignment:
                      MainAxisAlignment.center, // Center the icon and text
                  children: [
                    IconButton(
                      icon:
                          const Icon(Icons.report_problem, color: Colors.white),
                      onPressed: () {
                        Navigator.pushNamed(context, '/new_complaint');
                      },
                    ),
                    const SizedBox(height: 8.0), // Space between icon and text
                    const Text(
                      "New Complaint", // Updated text
                      style: TextStyle(color: Colors.white), // White text
                      textAlign: TextAlign.center, // Center align the text
                    ),
                  ],
                ),
              ),
              Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Column(
                  mainAxisAlignment:
                      MainAxisAlignment.center, // Center the icon and text
                  children: [
                    IconButton(
                      icon: const Icon(Icons.list, color: Colors.white),
                      onPressed: () {
                        Navigator.pushNamed(context, '/categories');
                      },
                    ),
                    const SizedBox(height: 8.0), // Space between icon and text
                    const Text(
                      "Categories", // Updated text
                      style: TextStyle(color: Colors.white), // White text
                      textAlign: TextAlign.center, // Center align the text
                    ),
                  ],
                ),
              ),
              Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Column(
                  mainAxisAlignment:
                      MainAxisAlignment.center, // Center the icon and text
                  children: [
                    IconButton(
                      icon:
                          const Icon(Icons.calendar_today, color: Colors.white),
                      onPressed: () {
                        Navigator.pushNamed(context, '/event');
                      },
                    ),
                    const SizedBox(height: 8.0), // Space between icon and text
                    const Text(
                      "Event", // Updated text
                      style: TextStyle(color: Colors.white), // White text
                      textAlign: TextAlign.center, // Center align the text
                    ),
                  ],
                ),
              ),
              Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Column(
                  mainAxisAlignment:
                      MainAxisAlignment.center, // Center the icon and text
                  children: [
                    IconButton(
                      icon: const Icon(Icons.person, color: Colors.white),
                      onPressed: () {
                        Navigator.pushNamed(context, '/profile');
                      },
                    ),
                    const SizedBox(height: 8.0), // Space between icon and text
                    const Text(
                      "Profile", // Updated text
                      style: TextStyle(color: Colors.white), // White text
                      textAlign: TextAlign.center, // Center align the text
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
