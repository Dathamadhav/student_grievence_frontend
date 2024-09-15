import 'package:flutter/material.dart';

class AdminDashboard extends StatelessWidget {
  const AdminDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Admin Dashboard"),
        backgroundColor: Colors.yellow[700], // AppBar color
      ),
      body: Container(
        color: Colors.yellow[100], // Light yellow background
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: SizedBox(
            width: 400, // Limit the width of the grid to center it
            child: GridView.count(
              crossAxisCount: 2, // Two items per row
              crossAxisSpacing: 16.0, // Horizontal spacing between items
              mainAxisSpacing: 16.0, // Vertical spacing between items
              childAspectRatio: 1.5, // Adjust the aspect ratio of grid items
              children: <Widget>[
                _buildGridItem(
                  context,
                  title: "See All Complaints",
                  route: "/admin_complaint_category",
                ),
                _buildGridItem(
                  context,
                  title: "Register New User",
                  route: "/register",
                ),
                _buildGridItem(
                  context,
                  title: "Add New Event",
                  route: "/new_event",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildGridItem(
    BuildContext context, {
    required String title,
    required String route,
  }) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, route);
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.yellow[600], // Yellow container color
          borderRadius: BorderRadius.circular(12.0), // Rounded corners
        ),
        child: Center(
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: Colors.white, // White text color
            ),
          ),
        ),
      ),
    );
  }
}
