import 'package:flutter/material.dart';

class FacultyDashboard extends StatelessWidget {
  const FacultyDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Faculty Dashboard"),
        backgroundColor: Colors.yellow[700],
      ),
      body: Container(
        color: Colors.yellow[100], // Light yellow background
        padding: const EdgeInsets.all(16.0),
        child: GridView.count(
          crossAxisCount: 2, // 2 items per row
          crossAxisSpacing: 16.0, // Horizontal space between grid items
          mainAxisSpacing: 16.0, // Vertical space between grid items
          children: <Widget>[
            _buildGridTile(
              context,
              icon: Icons.event,
              label: "Add Event",
              routeName: '/new_event',
            ),
            _buildGridTile(
              context,
              icon: Icons.event_available,
              label: "Events",
              routeName: '/event',
            ),
            _buildGridTile(
              context,
              icon: Icons.report_problem,
              label: "Report Complaint",
              routeName: '/new_complaint',
            ),
            _buildGridTile(
              context,
              icon: Icons.category,
              label: "Categories",
              routeName: '/categories',
            ),
            _buildGridTile(
              context,
              icon: Icons.person,
              label: "Profile",
              routeName: '/profile',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildGridTile(BuildContext context,
      {required IconData icon,
      required String label,
      required String routeName}) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, routeName);
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.yellow[600],
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 40, color: Colors.white),
            const SizedBox(height: 8.0),
            Text(
              label,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
